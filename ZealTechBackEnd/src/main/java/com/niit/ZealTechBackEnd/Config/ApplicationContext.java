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

import com.niit.ZealTechBackEnd.Dao.AuthenticationDao;
import com.niit.ZealTechBackEnd.Dao.BillingDao;
import com.niit.ZealTechBackEnd.Dao.CartDao;
import com.niit.ZealTechBackEnd.Dao.CartItemsDao;
import com.niit.ZealTechBackEnd.Dao.CategoryDao;
import com.niit.ZealTechBackEnd.Dao.OrderDao;
import com.niit.ZealTechBackEnd.Dao.OrderItemsDao;
import com.niit.ZealTechBackEnd.Dao.ProductDao;
import com.niit.ZealTechBackEnd.Dao.ShippingDao;
import com.niit.ZealTechBackEnd.Dao.SupplierDao;
import com.niit.ZealTechBackEnd.Dao.UserDao;
import com.niit.ZealTechBackEnd.DaoImpl.AuthenticationDaoImpl;
import com.niit.ZealTechBackEnd.DaoImpl.BillingDaoImpl;
import com.niit.ZealTechBackEnd.DaoImpl.CartDaoimpl;
import com.niit.ZealTechBackEnd.DaoImpl.CartItemsDaoImpl;
import com.niit.ZealTechBackEnd.DaoImpl.CategoryDaoImpl;
import com.niit.ZealTechBackEnd.DaoImpl.OrderDaoImpl;
import com.niit.ZealTechBackEnd.DaoImpl.OrderItemsDaoImpl;
import com.niit.ZealTechBackEnd.DaoImpl.ProductDaoImpl;
import com.niit.ZealTechBackEnd.DaoImpl.ShippingDaoImpl;
import com.niit.ZealTechBackEnd.DaoImpl.SupplierDaoImpl;
import com.niit.ZealTechBackEnd.DaoImpl.UserDaoImpl;
import com.niit.ZealTechBackEnd.Model.Authentication;
import com.niit.ZealTechBackEnd.Model.Billing;
import com.niit.ZealTechBackEnd.Model.Cart;
import com.niit.ZealTechBackEnd.Model.CartItems;
import com.niit.ZealTechBackEnd.Model.Category;
import com.niit.ZealTechBackEnd.Model.Order;
import com.niit.ZealTechBackEnd.Model.OrderItems;
import com.niit.ZealTechBackEnd.Model.Product;
import com.niit.ZealTechBackEnd.Model.Shipping;
import com.niit.ZealTechBackEnd.Model.Supplier;
import com.niit.ZealTechBackEnd.Model.User;

@Configuration // to let know it is configuration
@ComponentScan("com.niit.*") // group id When i refresh compiler should search entire in com.niit.*
@EnableTransactionManagement // when ever i call save or delete to let know where is that object at
								// repsoritry in daoimpl it both should have same name

public class ApplicationContext {
	@Bean("dataSource") // Connection of h2 database
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/ZealTech");
		dataSource.setUsername("raki");
		dataSource.setPassword("raki");
		return dataSource;
	}

	private Properties getHibernateProperties() { // to connect many databases with same code
		Properties properties = new Properties();
		properties.put("hibernate.connection.pool_size", "10"); // Maximum 10 seize can be given to pool
		properties.put("hibernate.hbm2ddl.auto", "update"); // automatic creation of ddl (all tables) in the database
		properties.put("hibernate.show_sql", "true"); // Statements in databases(sql,insertion,all statements) should
														// show
		properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect"); // Since using with h2Dialect
		return properties;
	}

	@Autowired
	@Bean("sessionFactory") // model class as to be referred since that class table ll be created
	public SessionFactory getSessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		sessionBuilder.addAnnotatedClass(Category.class);
		sessionBuilder.addAnnotatedClass(Product.class);
		sessionBuilder.addAnnotatedClass(Supplier.class);
		sessionBuilder.addAnnotatedClass(User.class);
		sessionBuilder.addAnnotatedClass(Authentication.class);
		sessionBuilder.addAnnotatedClass(Billing.class);
		sessionBuilder.addAnnotatedClass(Cart.class);
		sessionBuilder.addAnnotatedClass(CartItems.class);
		sessionBuilder.addAnnotatedClass(Order.class);
		sessionBuilder.addAnnotatedClass(OrderItems.class);
		sessionBuilder.addAnnotatedClass(Shipping.class);
		return sessionBuilder.buildSessionFactory();
	}

	@Autowired
	@Bean("transactionManager") // save or update method
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		return transactionManager;
	}

	@Autowired // Accessing @repsoritary and calling all methods inside it
	@Bean("categoryDao")
	public CategoryDao getCategoryDao(SessionFactory sessionFactory) {
		return new CategoryDaoImpl(sessionFactory);
	}

	@Autowired
	@Bean("productDao")
	public ProductDao getProductDao(SessionFactory sessionFactory) {
		return new ProductDaoImpl(sessionFactory);
	}

	@Autowired
	@Bean("supplierDao")
	public SupplierDao getSupplierDao(SessionFactory sessionFactory) {
		return new SupplierDaoImpl(sessionFactory);
	}

	@Autowired
	@Bean("userDao")
	public UserDao getUserDao(SessionFactory sessionFactory) {
		return new UserDaoImpl(sessionFactory);
	}

	@Autowired
	@Bean("authenticationDao")
	public AuthenticationDao getAuthenticationDao(SessionFactory sessionFactory) {
		return new AuthenticationDaoImpl(sessionFactory);
	}

	@Autowired
	@Bean("billingDao")
	public BillingDao getBillingDao(SessionFactory sessionFactory) {
		return new BillingDaoImpl(sessionFactory);
	}

	@Autowired
	@Bean("cartDao")
	public CartDao getCartDao(SessionFactory sessionFactory) {
		return new CartDaoimpl(sessionFactory);
	}

	@Autowired
	@Bean("cartItemsDao")
	public CartItemsDao getCartItemsDao(SessionFactory sessionFactory) {
		return new CartItemsDaoImpl(sessionFactory);
	}
	
	@Autowired
	@Bean("orderDao")
	public OrderDao getOrderDao(SessionFactory sessionFactory) {
		return new OrderDaoImpl(sessionFactory);
	}
	
	@Autowired
	@Bean("orderItemsDao")
	public OrderItemsDao getOrderItemsDao(SessionFactory sessionFactory) {
		return new OrderItemsDaoImpl(sessionFactory);
	}
	
	@Autowired
	@Bean("shippingDao")
	public ShippingDao getShippingDao(SessionFactory sessionFactory) {
		return new ShippingDaoImpl(sessionFactory);
	}
}
