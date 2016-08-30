package com.niit.jewellerycart.dao;


	import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
		import org.hibernate.SessionFactory;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
		import org.springframework.stereotype.Repository;
		import org.springframework.transaction.annotation.Transactional;

		import com.niit.jewellerycart.model.User;

		@Repository("UserDAO")

		public class UserDAOImpl implements UserDAO {
			
			
			@Autowired
			
		private SessionFactory sessionFactory;
			public UserDAOImpl(SessionFactory sessionFactory){
				
				this.sessionFactory = sessionFactory;
			}
			
			@Transactional
			public void saveOrUpdate(User user)
			
			{
				user.setEnabled(true);
				user.setRole("user");
				sessionFactory.getCurrentSession().saveOrUpdate(user);
				
			}
			
			@Transactional
			
			public void delete(String username)
			{
				User UserToDelete = new User();
				UserToDelete.setUsername(username);
				sessionFactory.getCurrentSession().delete(UserToDelete);
			}
			private CategoryDAOImpl currentSession() {
				// TODO Auto-generated method stub
				return null;
			}

			@Transactional
			public User get(String username)
			
			{
				//String hql = "from User where username=" +"'"+username+"'";
			Criteria query = sessionFactory.getCurrentSession().createCriteria(User.class);
			query.add(Restrictions.eq("username", username));
			List<User> listUser=query.list();
			
			if(listUser !=null && !listUser.isEmpty())
			{
				return listUser.get(0);
			}
			return null;
			}
			
				
			@Transactional
			public boolean isValidUser(String username, String password)
				{
				System.out.println("welcome into dao for is validuser");
				//String hql="from User where username='"+username+"'and"+"password='"+password+"'";
				Criteria query = sessionFactory.getCurrentSession().createCriteria(User.class);
				
				Criterion cr=Restrictions.and(Restrictions.eq("username", username),Restrictions.eq("password", password));
				query.add(cr);
				
				@SuppressWarnings("unchecked")
				List<User> listUser=query.list();
				if(listUser !=null && !listUser.isEmpty())
				{
					return true;
				}
				return false;
				}
			
			
			
			@Transactional
			public List<User> list()
			{System.out.println("in the list creation");
				
				@SuppressWarnings("unchecked")
				
				List<User> listUser=(List<User>) sessionFactory.getCurrentSession().createCriteria(User.class).list();
				return listUser;
				
				
			}
			
			
			public String role(User username)
			{
				
				
				Criteria c=sessionFactory.getCurrentSession().createCriteria(User.class);
				
				return null;
			}
		}






