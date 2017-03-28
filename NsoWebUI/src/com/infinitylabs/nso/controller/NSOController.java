package com.infinitylabs.nso.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.infinitylabs.nso.bean.LoginBean;

@Controller  
public class NSOController {
	@Autowired  
	LoginBean loginBean;
	
	@RequestMapping("/login")  
    public ModelAndView loginPage() {  
        return new ModelAndView("login", "loginBean", loginBean);  
    }  

}
