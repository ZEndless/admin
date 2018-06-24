package com.jh.txx.login;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * 
 * @ClassName: LoginController 
 * @Description: TODO
 * @author: admin
 * @date: 2018年6月15日 上午10:22:30
 */
@Controller
public class LoginController {
	/**
	 * 
	 * @Title: login 
	 * @Description: 跳转至登陆页面
	 * @return
	 * @return: String
	 */
	@GetMapping(value = {"/","/login"})
	public String login() {
		return "login/login";
	}
}
