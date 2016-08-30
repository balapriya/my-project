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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import com.niit.jewellerycart.dao.ProductDAO;
import com.niit.jewellerycart.model.FileUtil;
import com.niit.jewellerycart.model.Product;

@Controller
public class ProductController {
	String path = "C:/Workspace/JewelleryCart/src/main/webapp/resources/images/";
	
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private Product product;
	

	@RequestMapping(value="added",method=RequestMethod.POST)
	public ModelAndView AddProductpost(@ModelAttribute ("product") Product product,BindingResult result,Model model)
	{
		
	    productDAO.saveOrUpdate(product);
		ModelAndView mv=new ModelAndView("redirect:/ViewProduct");
		mv.addObject("product",product);
		mv.addObject("isuserclickednewuser","true");
		return mv;
		}
	
	
	@RequestMapping("/ViewProduct")
	public ModelAndView gotoViewProduct()
	{
		
		
	ModelAndView mv=new ModelAndView("ViewProduct");
	Gson gson =new Gson();
	List<Product> c=productDAO.list();
	String prolis = gson.toJson(c);
	System.out.println("prolis"+prolis);
	mv.addObject("prolis",prolis);
	
	return mv;
	}
	
	@RequestMapping(value ="/editpro{id}")
	  public String edit(@PathVariable("id")int id,ModelMap model){
		  productDAO.get(id);
		  model.addAttribute("product",product);
	  return "/AddProduct";
	  }
	  @RequestMapping(value="/removepro{id}")
	  public String deletepro(@PathVariable("id")int id){
		  
		  productDAO.delete(id);
		 return "redirect:/ViewProduct";
	  }
	  @RequestMapping(value ="product",method=RequestMethod.POST)
		public String addproduct(@ModelAttribute("product") Product product){
			
			
			productDAO.saveOrUpdate(product);
			MultipartFile file=product.getImage();
			FileUtil.upload(path, file, product.getId()+".jpg");
			return "redirect:/viewproduct";
		}
}
	
	
	  
	  
	
	  
	
	
	/*@RequestMapping(value="/added",method=RequestMethod.POST)
	public ModelAndView AddProductpost(@ModelAttribute("product") Product product,BindingResult result,Model model)
	{
	
		productDAO.saveOrUpdate(product);
	
	
	MultipartFile file=product.getFile();
	FileUtil.upload(path,file,product.getId()+".jpg");
	
	ModelAndView mv=new ModelAndView("redirect:/ViewProduct");
	
	return mv;
	}
}*/


