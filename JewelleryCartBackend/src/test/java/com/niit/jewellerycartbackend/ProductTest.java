package com.niit.jewellerycartbackend;


	import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.jewellerycart.dao.ProductDAO;
import com.niit.jewellerycart.model.Product;

	public class ProductTest {

		
		public static void main (String[]args)
		{
			
			AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
			
			context.scan("com.niit.springshopbackend");
			System.out.println("inside main method");
			context.refresh();
			System.out.println("after refresh method");
			ProductDAO productDAO =(ProductDAO)context.getBean("productDAO");
			System.out.println("after getbean");
			Product product =(Product) context.getBean("product");
			

		
		product.setName("");
		
		product.setDescription("");
		
		
		productDAO.saveOrUpdate(product);
		
		}
		
		
																																																																																																																																																																																																																						
		}




