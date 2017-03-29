package com.infinitylabs.nso.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.infinitylabs.nso.bean.LoginBean;
import com.infinitylabs.nso.logic.LogicForWebService;

@Controller  
public class NSOController {
	@Autowired  
	LoginBean loginBean;
	@Autowired
	LogicForWebService logicService;
	
	@RequestMapping("/firstPage")  
    public ModelAndView loginPage() {  
        return new ModelAndView("login", "loginBean", loginBean);  
    }  
	
	@RequestMapping(value="/login",method = RequestMethod.POST)
	public ModelAndView loginMethod(@ModelAttribute("loginBean") LoginBean loginBean,HttpServletRequest request,BindingResult result){
		HttpSession session;
		ResponseEntity<String> loginResponse = logicService.getLogin(loginBean);
		System.out.println("Response String  "+loginResponse.getBody());
			if (loginResponse.getStatusCode() != HttpStatus.OK) {
				throw new RuntimeException("Failed : HTTP error code : " + loginResponse.getStatusCode());
			}
			
			JSONObject outputjson = null;
			try {
				outputjson = new JSONObject(loginResponse.getBody());
			} catch (JSONException e) {
				e.printStackTrace();
			}
			System.out.println("Response Json :"+outputjson.toString());
			if(outputjson.has("result")){
				session=request.getSession(true);
				session.setAttribute("user",request.getParameter("username"));
				return new ModelAndView("catalogue", "loginBean", loginBean);
			}else if(outputjson.has("error")){
				ModelAndView model=new ModelAndView();
				model.setViewName("login");
				model.addObject("loginBean", loginBean);
				model.addObject("error", "Authentication failed");
			
				return model;
			}else {
				return null;
			}
				
	}

}
