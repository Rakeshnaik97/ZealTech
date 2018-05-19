package com.niit.ZealTechBackEnd.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ZealTechBackEnd.Dao.UserDao;
import com.niit.ZealTechBackEnd.Model.Authentication;
import com.niit.ZealTechBackEnd.Model.Category;
import com.niit.ZealTechBackEnd.Model.User;

@Transactional
@Repository("userDao")
@EnableTransactionManagement
public class UserDaoImpl implements UserDao {

	@Autowired
	SessionFactory sessionFactory;

	public UserDaoImpl(SessionFactory sessionFactory) {
		// TODO Auto-generated constructor stub
		this.sessionFactory = sessionFactory;
	}

	public boolean saveorupdateUser(User user) {
		// TODO Auto-generated method stub
		Authentication auth = new Authentication();
		auth.setUserName(user.getUserEmailId());
		user.getBilling().setUser(user);
		user.getBilling().setBillingPh_no(user.getUserPh_no());
		user.getBilling().setBillingAddress(user.getUseraddress());
		sessionFactory.getCurrentSession().saveOrUpdate(user.getCart());
		sessionFactory.getCurrentSession().saveOrUpdate(user.getBilling());
		sessionFactory.getCurrentSession().saveOrUpdate(auth);
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		return true;
	}

	public boolean deleteUser(User user) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(user);
		return true;
	}

	public User getUser(String UserId) {
		// TODO Auto-generated method stub
		String s = "From User Where UserId ='" + UserId + "'";
		Query q = sessionFactory.getCurrentSession().createQuery(s);
		List<User> list = (List<User>) q.list();
		if (list == null || list.isEmpty()) {
			System.out.println("User List Not Found");
			return null;
		} else {
			System.out.println("User list");
			return list.get(0);
		}
	}

	public List<User> list() {
		// TODO Auto-generated method stub
		List<User> user = (List<User>) sessionFactory.getCurrentSession().createCriteria(User.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return user;
	}

	@Override
	public User isValid(String umail, String pwd) {
		// TODO Auto-generated method stub
		String s = "From User Where UserEmailId ='" + umail + "' and pwd='" + pwd + "'";
		Query q = sessionFactory.getCurrentSession().createQuery(s);
		List<User> list = (List<User>) q.list();
		if (list == null || list.isEmpty()) {
			System.out.println("User List Not Found");
			return null;
		} else {
//			System.out.println("User list");
			return list.get(0);
		}
	}

	@Override
	public User getEmail(String currusername) {
		String s = "From User Where UserEmailId ='" + currusername + "'";
		Query q = sessionFactory.getCurrentSession().createQuery(s);
		List<User> list = (List<User>) q.list();
		if (list == null || list.isEmpty()) {
			System.out.println("User List Not Found");
			return null;
		} else {
			System.out.println("User list");
			return list.get(0);
		}
	}

}
