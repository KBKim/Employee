package com.hybrid.controller;

import java.util.ArrayList;
import java.util.List;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hybrid.model.City;
import com.hybrid.model.CityList;

@Controller
@RequestMapping("/city")      //CityContoller와 매핑, driven찾음
public class CityController {
	static Log log = LogFactory.getLog(CityController.class);

	@RequestMapping("/city.html")    //  /city/dept.htlm 매핑
	public String getView() {                  //매핑이 맞으면 이것이 실행됨
		log.info("getView()...");
		
		return "city/city";    //이것은 WEB-INF/view/city/city.jsp를 표현한것이다
		
	}
	
	@RequestMapping(value={"", "/"})       
	@ResponseBody                 //DATA로 응답하는것
	public CityList getCityAll() {
		
		CityList list = new CityList();
		
		List<City> citys = new ArrayList<City>();
		
		City city = new City();
		city.setId(100);
		city.setName("seoul");
		citys.add(city);
		
		City city2 = new City();
		city2.setId(200);
		city2.setName("pusan");
		citys.add(city2);
		
		list.setCitys(citys);
		
		return list;
		
	}
	
}












