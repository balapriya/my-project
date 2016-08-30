package com.niit.jewellerycartbackend;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.jewellerycart.dao.CategoryDAO;
import com.niit.jewellerycart.dao.CategoryDAOImpl;
import com.niit.jewellerycart.dao.ProductDAO;
import com.niit.jewellerycart.dao.ProductDAOImpl;
import com.niit.jewellerycart.dao.SupplierDAO;
import com.niit.jewellerycart.dao.SupplierDAOImpl;
import com.niit.jewellerycart.dao.UserDAO;
import com.niit.jewellerycart.dao.UserDAOImpl;
import com.niit.jewellerycart.dao.UserDAO;
import com.niit.jewellerycart.model.Category;
import com.niit.jewellerycart.model.Product;
import com.niit.jewellerycart.model.Supplier;
import com.niit.jewellerycart.model.User;

@Configuration
@ComponentScan("com.niit.jewellerycart.model")
@EnableTransactionManagement


public class ApplicationContextConfig {

  
	@Bean(name = "dataSource")
	public DataSource getDataSource() {
		System.out.println("data source");
	DriverManagerDataSource dataSource = new DriverManagerDataSource();
	dataSource.setDriverClassName("org.h2.Driver");
	dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");
	System.out.println("inside getdata source");
	dataSource.setUsername("sa");
	dataSource.setPassword("sa");
	return dataSource;
	}
	    
   
    
    private Properties getHibernateProperties() {
    	System.out.println("in properties");
    Properties properties = new Properties();
    properties.put("hibernate.show_sql", "true");
      properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
     properties.put("hibernate.hbm2ddl.auto", "update");
    return properties;
    }
    
    @Autowired
    @Bean(name = "sessionFactory")
    public SessionFactory getSessionFactory(DataSource dataSource) {
    	System.out.println("in sessionf");
    LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
    sessionBuilder.addProperties(getHibernateProperties());
    sessionBuilder.addAnnotatedClass(Category.class);
    sessionBuilder.addAnnotatedClass(Supplier.class);
    sessionBuilder.addAnnotatedClass(Product.class);
    sessionBuilder.addAnnotatedClass(User.class);
    
    
      return sessionBuilder.buildSessionFactory();
    }
    
@Autowired
@Bean(name = "transactionManager")
public HibernateTransactionManager getTransactionManager(
SessionFactory sessionFactory) {
	System.out.println("In transaction");
HibernateTransactionManager transactionManager = new HibernateTransactionManager(
sessionFactory);

return transactionManager;
}
    
   


 @Autowired
   @Bean(name = "categoryDAO")
   public CategoryDAO getCategoryDao(SessionFactory sessionFactory) {
   
return new CategoryDAOImpl(sessionFactory);
   }
 

 @Autowired
 @Bean(name = "supplierDAO")
 public SupplierDAO getSupplierDao(SessionFactory sessionFactory) {
 
return new SupplierDAOImpl(sessionFactory);

 }
 
 @Autowired
 @Bean(name = "productDAO")
 public ProductDAO getProductDao(SessionFactory sessionFactory) {
 
return new ProductDAOImpl(sessionFactory);

 }
 @Autowired
 @Bean(name = "userDAO")
 public UserDAO getUserDao(SessionFactory sessionFactory) {
 
return new UserDAOImpl(sessionFactory);
 
 }
}