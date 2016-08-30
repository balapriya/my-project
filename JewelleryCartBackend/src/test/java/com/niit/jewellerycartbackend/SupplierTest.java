package com.niit.jewellerycartbackend;



	import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.jewellerycart.dao.SupplierDAO;
import com.niit.jewellerycart.model.Supplier;

	public class SupplierTest {

		
		public static void main (String[]args)
		{
			
			AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
			
			context.scan("com.niit.springshopbackend");
			System.out.println("inside main method");
			context.refresh();
			System.out.println("after refresh method");
			SupplierDAO supplierDAO =(SupplierDAO)context.getBean("supplierDAO");
			System.out.println("after getbean");
			Supplier supplier =(Supplier) context.getBean("supplier");
			
			
		
		supplier.setName("vetha communications");
		
		supplier.setDescription("60,highroad,mumbai");
		
		supplierDAO.saveOrUpdate(supplier);
		
		
		
		

		}






}
