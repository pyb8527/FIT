package kr.ac.hit.controller;

import javax.servlet.http.HttpServletRequest;

//import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//import kr.ac.hit.beans.UserBean;

@Controller
public class HomeController {
	
//	@Resource(name="loginUserBean")
//	private UserBean loginUserBean;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpServletRequest request) {
//		System.out.println(loginUserBean);
		System.out.println(request.getServletContext().getRealPath("/"));
		return "redirect:/user/login";
	}
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public String index() {
		return "redirect:/user/login";
	}
	@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String welcome() {
		return "welcome";
	}
	@RequestMapping(value = "/system", method = RequestMethod.GET)
	public String system() {
		return "system";
	}
	@RequestMapping(value = "/infoDep", method = RequestMethod.GET)
	public String infoDep() {
		return "infoDep";
	}

}
