package com.library.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.library.model.libraryman;
import com.library.repository.librepo;

@Controller
public class libarycontrol 
{
	
@Autowired
public librepo erepo;
@GetMapping("/")
public String register() 
{
return "register.jsp";	
}
@PostMapping("/register")
public String reg(@ModelAttribute libraryman lib)
{
	System.out.println(lib);
	erepo.save(lib);
	return "login.jsp";
}
@GetMapping("/login")
public String login(@RequestParam String email,@RequestParam String password)
{
	System.out.println(email+" "+password);
	libraryman ob=erepo.findByEmail(email);
	if(ob!=null && ob.getEmail().equalsIgnoreCase(email)&& ob.getPassword().equals(password)) 
	{
		return"welcome.jsp";
	}else 
	{
		return"login.jsp";
	}
}
}
