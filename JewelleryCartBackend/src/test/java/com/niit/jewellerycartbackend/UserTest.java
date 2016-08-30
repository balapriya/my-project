package com.niit.jewellerycartbackend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.jewellerycart.dao.UserDAO;
import com.niit.jewellerycart.model.User;




public class UserTest {

	public static void main(String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();

		context.scan("com.niit.jewellerycartbackend");
		System.out.println("inside main method");
		context.refresh();
		System.out.println("after refresh method");
		UserDAO userDAO = (UserDAO) context.getBean("userDAO");
		System.out.println("after getbean");
		User user = (User) context.getBean("user");

	//	user.setId("");

		user.setFirstname("");

		user.setLastname("");
		user.setAddress("");
		user.setCity("");
		user.setState("");
		user.setZip("");
		user.setAge("");
	
		user.setGender("");
		user.setPhonenumber("");

		user.setEmail("");

		user.setPassword("");

		userDAO.saveOrUpdate(user);

	}

}
