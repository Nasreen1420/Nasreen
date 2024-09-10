package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.project.model.User;
import com.project.repository.UserRepository;

@Controller
public class UserController 
{
	@Autowired
	private UserRepository urepo;
	
	@RequestMapping("/")
	public String landing()
	{
		return "home.jsp";
		
	}
	
//	@RequestMapping("/register")
//	public String insert()
//	{
//		
//		return "insert.jsp";
//	}
	
	@RequestMapping("/register")
	public String register(@ModelAttribute User ob)
	{
		urepo.save(ob);
		return "success.jsp";
	} 
	
	@RequestMapping("/login")
	public String login()
	{
		return "login.jsp";
	}
	
	
	@RequestMapping("/login1")
	public String login1(@RequestParam String email,@RequestParam String password)
	{
		User ob = urepo.findByEmail(email);
		if(ob != null && ob.getEmail().equalsIgnoreCase(email) && ob.getPassword().equals(password))
		{
			return "admin.jsp";
		}
		else
		{
			return "login.jsp";
		}
	}

}
