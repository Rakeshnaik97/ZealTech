package com.niit.ZealTechFrontEnd.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller // Controllers Starting
public class HomeController {

	@RequestMapping("/")
	public String Home() {
		return "Home"; // same as created jsp file
	}

	@RequestMapping("/Contactus")
	public String Contactus() {
		return "Contactus"; // same as created jsp file //We Should Add each and Page wchich we add in views
							// Folder Here
	}

	@RequestMapping("/Login")
	public String Login() {
		return "Login"; // same as created jsp file
	}

	@RequestMapping("/Signup")
	public String Signup() {
		return "Signup"; // same as created jsp file
	}

	@RequestMapping("/Header")
	public String Header() {
		return "Header"; // same as created jsp file
	}

	@RequestMapping("/Footer")
	public String Footer() {
		return "Footer"; // same as created jsp file
	}

	@RequestMapping("/BJ")
	public String BJ()
	{
	return "BJ"; // same as created jsp file
	}
}
