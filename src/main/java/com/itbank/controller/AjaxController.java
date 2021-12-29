package com.itbank.controller;

import java.io.IOException;

import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;



import com.itbank.service.MemberService;

@RestController
public class AjaxController {

	@Autowired private MemberService ms;
	
	@GetMapping(value="/memberList", produces="application/json; charset=utf-8")
	public String memberList() throws IOException {
		String data = ms.getMemberList();
		
		if(data != null) {	// 서비스에서 불러온 데이터가 있으면 데이터를 반환
			return data;
		}
		
		return "{\"message\" : \"no data\"}";
	}
	@GetMapping(value="json01", produces="application/json; charset=utf-8")
	public String json1() throws IOException, ParseException {
		String data = ms.storeList();
		
		return data;
	}
}
