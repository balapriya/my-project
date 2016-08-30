package com.niit.jewellerycart.controller;

import java.util.List;



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
import com.niit.jewellerycart.dao.SupplierDAO;

import com.niit.jewellerycart.model.Supplier;
@Controller
public class SupplierController {
	@Autowired
	private SupplierDAO supplierDAO;
	@Autowired
	private Supplier supplier;

	@RequestMapping(value="/add",method=RequestMethod.POST)
	public ModelAndView AddSupplierpost(@ModelAttribute ("supplier") Supplier supplier,BindingResult result,Model model)
	{
		
		supplierDAO.saveOrUpdate(supplier);
	ModelAndView mv=new ModelAndView("redirect:/ViewSupplier");
	mv.addObject("supplier",supplier);
	mv.addObject("isuserclickednewuser","true");
	return mv;
	}
	@RequestMapping("/ViewSupplier")
	public ModelAndView gotoViewSupplier()
	{
		
		
	ModelAndView mv=new ModelAndView("ViewSupplier");
	Gson gson =new Gson();
	List<Supplier> c=supplierDAO.list();
	String suplis = gson.toJson(c);
	System.out.println("suplis"+suplis);
	mv.addObject("suplis",suplis);
	
	return mv;
	}
	@RequestMapping(value ="/editsup{id}")
	  public String edit(@PathVariable("id")int id,ModelMap model){
		  supplierDAO.get(id);
		  model.addAttribute("supplier",supplier);
	  return "/AddSupplier";
	  }
	  @RequestMapping(value="/removesup{id}")
	  public String deletesup(@PathVariable("id")int id){
		  
		  supplierDAO.delete(id);
		 return "redirect:/ViewSupplier";
	  }
	
	
}
