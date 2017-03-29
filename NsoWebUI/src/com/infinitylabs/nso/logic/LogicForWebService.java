package com.infinitylabs.nso.logic;

import org.json.JSONObject;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.client.RestTemplate;

import com.infinitylabs.nso.bean.LoginBean;

public class LogicForWebService {
	final String createdIp="192.168.0.109";
	final String url="http://"+createdIp+":8080/jsonrpc";
	
	//this method is used for login
	public ResponseEntity<String> getLogin(LoginBean loginBean){
		 ResponseEntity<String> loginResponse = null ;
		try{
				JSONObject params=new JSONObject();
			    params.put("user", loginBean.getUsername() );
			    params.put("passwd", loginBean.getPassword());
			    JSONObject sendJson=new JSONObject();
			    sendJson.put("jsonrpc", "2.0");
			    sendJson.put("id", "1");
			    sendJson.put("method", "login");
			    sendJson.put("params", params);
				
			    RestTemplate restTemplate=new RestTemplate();   
			    HttpHeaders headers = new HttpHeaders();
			    headers.setContentType(MediaType.APPLICATION_JSON);
			    HttpEntity<String> entity = new HttpEntity<String>(sendJson.toString(), headers);
			    loginResponse = restTemplate.exchange(url,  HttpMethod.POST, entity, String.class);
		}catch(Exception e){
			e.printStackTrace();
		}
		return loginResponse;
		
	}

}
