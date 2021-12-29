package com.itbank.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Scanner;

import org.json.simple.parser.*;

import org.springframework.stereotype.Service;



@Service
public class MemberService {

	// 자바코드를 활용하여 내 웹 서버에서 다른 서버의 json데이터를 받아오기
	public String getMemberList() throws IOException {
		
		String url = "http://221.164.9.200/memberList";
		
//		String url = "http://apis.data.go.kr/6260000/FoodService/getFoodKr?serviceKey=q6WAnLS1b6vUa9VoLCKmB14TY6kJ3AotCfHj10BgvLRuyQTk6nnlrOruwjHTWL9K8XZ%2B8L6Ic26%2BDJdRsSzOTw%3D%3D&pageNo=1&numOfRows=10&resultType=json";
		
		URL requestURL = new URL(url);
		
		HttpURLConnection conn = (HttpURLConnection)requestURL.openConnection();
				
		conn.setRequestMethod("GET");
		
		conn.setRequestProperty("Context-type", "application/json; charset=utf-8");
		
		Scanner sc = null;
		
		String json = "";
		
		String result = "";
		
		// 요청 결과 응답이 200이면 OK 정상이면
		if(conn.getResponseCode() == 200) {
			
			// 응답을 읽어낼 수 있는 스트림
			sc = new Scanner(conn.getInputStream());
			// 다음 줄이 있으면 json에 추가
			while(sc.hasNext()) {
				json += sc.nextLine();
			}
			sc.close();			// 내용을 모두 가져왔으면 스트림 닫기
			conn.disconnect();	// HTTP 연결 닫기
			
			System.out.println(json);
			
			return json;		// 결과 반환
		}
		
//		BufferedReader bf;
//		
//		bf = new BufferedReader(new InputStreamReader(requestURL.openStream(), "UTF-8"));
//		
//		result = bf.readLine();
//		
//		System.out.println(result);
		
		
		
		
		return null;
	}

}
