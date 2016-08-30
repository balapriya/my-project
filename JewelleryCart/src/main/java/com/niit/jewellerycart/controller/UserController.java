package com.niit.jewellerycart.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.maven.model.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.jewellerycart.dao.UserDAO;
import com.niit.jewellerycart.model.User;
@Controller

public class UserController {

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private User user;
	
	@RequestMapping(value="/Register",method=RequestMethod.POST)
	public ModelAndView Registrationpost(@ModelAttribute ("user") User user,BindingResult result,Model model)
	{
		System.out.println(user.getFirstname());
		System.out.println(user.getPhonenumber());
		userDAO.saveOrUpdate(user);
	ModelAndView mv=new ModelAndView("/Login");
	mv.addObject("user",user);
	mv.addObject("isuserclickednewuser","true");
	return mv;
	}
/*	@RequestMapping(value ="/logins")
	public ModelAndView loginpost(@RequestParam("username")String username,@RequestParam("password")String password, HttpSession session) {
	System.out.println("is valid user contoller");
		ModelAndView mv = new ModelAndView("Home");
		boolean isValidUser=userDAO.isValidUser(username,password);
		if(isValidUser==true)
		{
			user=userDAO.get(username);
			session.setAttribute("loggedInUser",user.getUsername());
			User list=userDAO.get(username);
			String role=list.getRole();
			if(role.equals("admin"))
			{	
				mv=new ModelAndView("Admin");
				mv.addObject("welcomes","welcome"+list.getUsername());
				mv.addObject("welcome","you have successfully loggedin shopper");
				
				return mv;
			}
		
			
			else{
				
				
				 mv=new ModelAndView("Home");
				mv.addObject("welcome","HI Admin");
				return mv;
			}
		}
	
	else
	{
		

		 mv=new ModelAndView("Login");
		mv.addObject("welcome","mismateched requirements --try again");
		return mv;
	}
		
}*/
	@RequestMapping(value ="login",method=RequestMethod.POST)
	public ModelAndView loginpost(HttpServletRequest request, HttpSession session) {
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		ModelAndView mv=new ModelAndView("/Login");
		boolean isValidUser=userDAO.isValidUser(username,password);
		if(isValidUser==true)
		{
			user=userDAO.get(username);
			session.setAttribute("loggedInUser","Welcome "+user.getFirstname()+"...!!!");
			if(user.getRole().equals("ROLE_ADMIN"))
			{	
				 mv= new ModelAndView("/Admin");
			}else{
				 mv= new ModelAndView("/Home");
				 System.out.print(user.getFirstname());
			}	
		}
		else{
			mv.addObject("invalidCredentials","true");
			mv.addObject("errorMessage","Invalid Credentials..! Not Yet Registered");
			}
	return mv;
	}
	@RequestMapping(value = "/Logout")
	public ModelAndView logout(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("/Home");
		session.invalidate();
		session = request.getSession(true);
		mv.addObject("loggedOut", "true");
		mv.addObject("logoutsuccess", "Loggedout Successfully");
		return mv;
	}

}


	
	/*@RequestMapping(value="login")
	public ModelAndView login(@RequestParam("username")String username,@RequestParam("password")String password){
		boolean isValidUser=userDAO.isValidUser(username, password);
		if(isValidUser==true)
		{
			
		}
	ModelAndView mv=new ModelAndView("/home");
	mv.addObject("user",new User());
	mv.addObject("isuserclickedlogin","true");
	return mv;
	}
*/
	/*
	@RequestMapping("/login")
	public ModelAndView login(){
		ModelAndView modelAndView = new ModelAndView("login");
		modelAndView.addObject("user", userDAO);
		//modelAndView.addObject("isuserClickedLoginHere", "true"); 
		return modelAndView;
	}
	
	@RequestMapping(value ="login",method=RequestMethod.POST)
	public  ModelAndView loginpost(@RequestParam("username")String username,@RequestParam("password")String password) {
	
		ModelAndView modelAndView = new ModelAndView("Home");
		boolean isValidUser=userDAO.isValidUser(username,password);
		if(isValidUser==true)
		{
			user=userDAO.get(username);
			session.setAttribute("loggedInUser",user.getUsername());
			if(user.getRole()=="admin")
			{	
				modelAndView.addObject("isAdmin","true");
			
			}else{
				modelAndView.addObject("isAdmin","false");
				modelAndView.addObject("loginsuccess", "LoggedIn Successfully");
				
				}	
		}
		else{
			modelAndView.addObject("invalidCredentials","tre");
			modelAndView.addObject("errorMessage","Invalid Credentials..! Not Yet Registered");
			
			
			}
	return modelAndView;
	}
	
}
*/


