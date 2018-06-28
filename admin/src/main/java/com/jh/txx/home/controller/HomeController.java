/**   
 * Copyright © 2018 公司名. All rights reserved.
 * 
 * @Title: HomeController.java 
 * @Prject: admin
 * @Package: com.jh.txx.home.controller 
 * @Description: TODO
 * @author: admin   
 * @date: 2018年6月28日 上午10:04:58 
 * @version: V1.0   
 */
package com.jh.txx.home.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

/** 
 * @ClassName: HomeController 
 * @Description: TODO
 * @author: admin
 * @date: 2018年6月28日 上午10:04:58  
 */
@Controller
public class HomeController {
	
	@GetMapping("/home")
	public ModelAndView home() {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("home/home");
		return modelAndView;
	}
}
