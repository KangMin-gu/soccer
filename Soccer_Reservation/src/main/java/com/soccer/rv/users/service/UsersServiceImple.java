package com.soccer.rv.users.service;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.google.code.geocoder.Geocoder;
import com.google.code.geocoder.GeocoderRequestBuilder;
import com.google.code.geocoder.model.GeocodeResponse;
import com.google.code.geocoder.model.GeocoderRequest;
import com.google.code.geocoder.model.GeocoderResult;
import com.google.code.geocoder.model.LatLng;
import com.soccer.rv.users.dao.UsersDao;
import com.soccer.rv.users.dto.UsersDto;

@Service
public class UsersServiceImple implements UsersService{
	
	@Autowired
	private UsersDao dao;
	
	@Override
	public ModelAndView signup(UsersDto dto) {
		 dao.insert(dto);
		 ModelAndView mView = new ModelAndView();
		 mView.addObject("id", dto.getId());
		
		return mView;
	}

	@Override
	public boolean canUseId(String id) {
		boolean canUse = dao.canUseId(id);
		return canUse;
	}

	@Override
	public ModelAndView login(UsersDto dto, HttpServletRequest request) {
		boolean isValid = dao.isValid(dto);
		String url = request.getParameter("url");
		ModelAndView mView = new ModelAndView();
		if(isValid){
			request.getSession().setAttribute("id", dto.getId());
			mView.addObject("msg", dto.getId()+"님 환영합니다.");
			mView.addObject("url", url);
		}else{
			mView.addObject("msg", "아이디 혹은 비밀번호를 확인해주세요.");
			String location = request.getContextPath()
					+"/users/loginform.do?url="+url;
			mView.addObject("url", location);
		}
		
		return mView;
	}

	@Override
	public ModelAndView update(UsersDto dto, HttpSession session) {
		String id = (String)session.getAttribute("id");
		dao.update(dto);
		ModelAndView mView = new ModelAndView();
		mView.addObject("id", id);
		return mView;
	}

	@Override
	public ModelAndView delete(HttpSession session) {
		String id = (String)session.getAttribute("id");
		dao.delete(id);
		ModelAndView mView = new ModelAndView();
		mView.addObject("id", id);
		session.invalidate();
		return mView;
	}

	@Override
	public ModelAndView detail(String id) {
		UsersDto dto = dao.getData(id);
		ModelAndView mView = new ModelAndView();
		mView.addObject("dto", dto);
		return mView;
	}
	
	// 주소를 좌표로 변경해주는 메소드

	@Override
	public ModelAndView map(String id) {
		
		UsersDto dto = dao.getMap(id);
		
		String location = dto.getAddr(); // DB에서 받은 주소를 location에 담는다.
		
		ModelAndView mView = new ModelAndView();
		Geocoder geocoder = new Geocoder(); //Geocoder 구글 API 객체 생
		
		GeocoderRequest geocoderRequest = new GeocoderRequestBuilder() 
				.setAddress(location).setLanguage("ko").getGeocoderRequest(); //주소를 좌표로 변경해주는 구글 url을 주소를 java 언어로 표현.
		try {
			GeocodeResponse geocoderResponse = geocoder.geocode(geocoderRequest);
			GeocoderResult geocoderResult=geocoderResponse.getResults().iterator().next();
			LatLng latitudeLongitude = geocoderResult.getGeometry().getLocation(); //json형식으로 출력된 정보 중 좌표만 얻어온다.
			Float[] coords = new Float[2]; //Float 타입의 배열에 담는다.
			coords[0] = latitudeLongitude.getLat().floatValue(); //json형식의 좌표값을 불러온다.
			coords[1] = latitudeLongitude.getLng().floatValue();
			String lat = Float.toString(coords[0]); // double 타입을 String 타입으로 형변환 하여 담는다.
			String lng = Float.toString(coords[1]);

			mView.addObject("lat", lat); //구글 map API에 좌표값을 넣기위해 view로 정보를 담아 보낸다.
			mView.addObject("lng", lng);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		mView.addObject("addr", location);
		return mView;
		}

	@Override
	public ModelAndView fieldList() {
		// TODO Auto-generated method stub
		return null;
	}

}
