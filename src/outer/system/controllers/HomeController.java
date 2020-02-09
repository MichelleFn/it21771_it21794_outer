package outer.system.controllers;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String showMyPage() {
		return "home";
	}
	
	@RequestMapping("/get")
	public String get() {
		return "get";
	}
	@RequestMapping("/post")
	public String post() {
		return "post";
	}
	@RequestMapping("/success")
	public String success() {
		return "success";
	}
	@RequestMapping("/about")
	public String about() {
		return "about";
	}
}
