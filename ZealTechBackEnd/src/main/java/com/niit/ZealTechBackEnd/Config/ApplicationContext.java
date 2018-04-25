package com.niit.ZealTechBackEnd.Config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.ZealTechBackEnd.Dao.CategoryDao;
import com.niit.ZealTechBackEnd.Dao.ProductDao;
import com.niit.ZealTechBackEnd.Dao.SupplierDao;
import com.niit.ZealTechBackEnd.Dao.UserDao;
import com.niit.ZealTechBackEnd.DaoImpl.CategoryDaoImpl;
import com.niit.ZealTechBackEnd.DaoImpl.ProductDaoImpl;
import com.niit.ZealTechBackEnd.DaoImpl.SupplierDaoImpl;
import com.niit.ZealTechBackEnd.DaoImpl.UserDaoImpl;
import com.niit.ZealTechBackEnd.Model.Category;
import com.niit.ZealTechBackEnd.Model.Product;
import com.niit.ZealTechBackEnd.Model.Supplier;
import com.niit.ZealTechBackEnd.Model.User;

@Configuration		//to let know it is configuration
@ComponentScan("com.niit.*")	//group id When i refresh compiler should search entire in com.niit.*
@EnableTransactionManagement	//when ever i call save or delete to let know where is that object at repsoritry in daoimpl it both should have same name

public class ApplicationContext {
	@Bean("dataSource")			//Connection of h2 database  
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/test/ShoppeMantra1");
		dataSource.setUsername("abhishek");
		dataSource.setPassword("abhishek");
		return dataSource;
	}

	private Properties getHibernateProperties() {   //to connect many databases with same code
		Properties properties = new Properties();
		properties.put("hibernate.connection.pool_size", "10"); //maxium 10 seize can be given to pool 
		properties.put("hibernate.hbm2ddl.auto", "update");		//automatic creation of ddl (all tables) in the database
		properties.put("hibernate.show_sql", "true");			//Statements in databases(sql,insertion,all statements) should show 
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");		//Since usin with h2Dialect
		return properties;
	}

	@Autowired
	@Bean("sessionFactory")				//model class as to be refered since that class table ll be created
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		sessionBuilder.addAnnotatedClass(Category.class);
		sessionBuilder.addAnnotatedClass(Product.class);
		sessionBuilder.addAnnotatedClass(Supplier.class);
		sessionBuilder.addAnnotatedClass(User.class);
		return sessionBuilder.buildSessionFactory();
	}

	@Autowired
	@Bean("transactionManager")  		//save or update method
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}

	@Autowired		//accesing  @repsoritary and callin all methods inside it  
	@Bean("categoryDao")
	public CategoryDao getCategoryDao(SessionFactory sessionFactory) {
		return new CategoryDaoImpl(sessionFactory);
	}

	@Autowired
	@Bean("ProductDao")
	public ProductDao getProductDao(SessionFactory sessionFactory) {
		return new ProductDaoImpl(sessionFactory);
	}

	@Autowired
	@Bean("SupplierDao")
	public SupplierDao getSupplierDao(SessionFactory sessionFactory) {
		return new SupplierDaoImpl(sessionFactory);
	}

	@Autowired
	@Bean("UserDao")
	public UserDao getUserDao(SessionFactory sessionFactory) {
		return new UserDaoImpl(sessionFactory);
	}

}
