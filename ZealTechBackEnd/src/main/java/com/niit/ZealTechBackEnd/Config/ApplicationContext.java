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

@Configuration
@ComponentScan("com.niit.*")
@EnableTransactionManagement

public class ApplicationContext {
	@Bean("dataSource")
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/test/ShoppeMantra1");
		dataSource.setUsername("abhishek");
		dataSource.setPassword("abhishek");
		return dataSource;
	}

	private Properties getHibernateProperties() {
		Properties properties = new Properties();
		properties.put("hibernate.connection.pool_size", "10");
		properties.put("hibernate.hbm2ddl.auto", "update");
		properties.put("hibernate.show_sql", "true");
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		return properties;
	}

	@Autowired
	@Bean("sessionFactory")
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
	@Bean("transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}

	@Autowired
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
