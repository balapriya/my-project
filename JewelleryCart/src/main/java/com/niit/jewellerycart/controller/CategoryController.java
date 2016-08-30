package com.niit.jewellerycart.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.maven.model.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.jewellerycart.dao.CategoryDAO;

import com.niit.jewellerycart.model.Category;

@Controller
public class CategoryController {
	@Autowired
	private CategoryDAO categoryDAO;
    @Autowired
    private Category category;
	@RequestMapping(value="save",method=RequestMethod.POST)
	public ModelAndView AddCategorypost(@ModelAttribute ("category") Category category,BindingResult result,Model model)
	{
		
		categoryDAO.saveOrUpdate(category);
	ModelAndView mv=new ModelAndView("redirect:/ViewCategory");
	mv.addObject("category",category);
	mv.addObject("isuserclickednewuser","true");
	return mv;
	}
	
	@RequestMapping("/ViewCategory")
	public ModelAndView gotoViewCategory()
	{
		
		
	ModelAndView mv=new ModelAndView("ViewCategory");
	Gson gson =new Gson();
	List<Category> c=categoryDAO.list();
	String catlis = gson.toJson(c);
	System.out.println("catlis"+catlis);
	mv.addObject("catlis",catlis);
	
	return mv;
	}
	@RequestMapping(value ="/editcat{id}")
	  public String edit(@PathVariable("id")int id,ModelMap model){
		  categoryDAO.get(id);
		  model.addAttribute("category",category);
	  return "/AddCategory";
	  }
	  @RequestMapping(value="/removecat{id}")
	  public String deletecat(@PathVariable("id")int id){
		  
		  categoryDAO.delete(id);
		 return "redirect:/ViewCategory";
	  }
	  /*@RequestMapping("/del")
	  public String delete(HttpServletRequest request,ModelMap model)
	  {
		  String idd=request.getParameter("catgid");
		  int id=Integer.parseInt(request.getParameter("catgid"));
		  categoryDAO.delete(id);
		  model.addAttribute("categoryList",categoryDAO.list());
		  return "redirect:/ViewCategory";
	  }*/
	  
	
}


