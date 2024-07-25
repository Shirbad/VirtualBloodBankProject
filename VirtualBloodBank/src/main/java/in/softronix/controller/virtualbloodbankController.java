package in.softronix.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import in.softronix.entity.virtualbloodbank;
import in.softronix.service.virtualbloodbankService;

@Controller
public class virtualbloodbankController {
	
	@Autowired
	virtualbloodbankService service;
	
	@RequestMapping(value="index",method=RequestMethod.GET)
	public String ind() {
		return "index";
	}
	
	
	@RequestMapping(value="header",method=RequestMethod.GET)
	public String head()
	{
		return "header";
	}
	
	@RequestMapping(value="content",method=RequestMethod.GET)
	public String wel()
	{
		return "content";
	}
	
	@RequestMapping(value="menu1",method=RequestMethod.GET)
	public String side1()
	{
		return "menu1";
	}
	
	@RequestMapping(value="menu2",method=RequestMethod.GET)
	public String side2()
	{
		return "menu2";
	}
	
	@RequestMapping(value="footer",method=RequestMethod.GET)
	public String foot()
	{
		return "footer";
	}
	
	@RequestMapping(value="register",method=RequestMethod.GET)
	public String regis()
	{
		return "register";
	}
	
	@RequestMapping(value="save",method=RequestMethod.POST)
	public String saves(@RequestParam String email,@RequestParam String password,@RequestParam String repass, @RequestParam String role)
	{
		virtualbloodbank bloodbank=new virtualbloodbank();
		bloodbank.setEmail(email);
		bloodbank.setPassword(password);
		bloodbank.setRetypepassword(repass);
		bloodbank.setRole(role);
		
		
		 service.savePro(bloodbank);
		
		if(password.equals(repass))
		{
			return "register";
		}
		else {
			return "redirect:/index";
		}
	}

	
	@RequestMapping(value="login",method=RequestMethod.GET)
	public String login()
	{
		return "login";
	}
}
