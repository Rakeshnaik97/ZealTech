package com.niit.ZealTechBackEnd.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ZealTechBackEnd.Dao.PayDao;
import com.niit.ZealTechBackEnd.Model.Authentication;
import com.niit.ZealTechBackEnd.Model.Pay;

@Transactional
@Repository("payDao")
@EnableTransactionManagement

public class PayDaoImpl implements PayDao {

	@Autowired
	SessionFactory sessionFactory;

	public PayDaoImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
		// TODO Auto-generated constructor stub
	}

	@Override
	public boolean saveorupdatePay(Pay pay) {
		sessionFactory.getCurrentSession().saveOrUpdate(pay);
		return true;
	}

	@Override
	public boolean deletePay(Pay pay) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(pay);

		return true;
	}

	@Override
	public Pay getPay(String payId) {
		// TODO Auto-generated method stub
		String s = "From Pay Where payId='" + payId + "'";
		Query q = sessionFactory.getCurrentSession().createQuery(s);
		List<Pay> list = (List<Pay>) q.list();
		if (list == null || list.isEmpty()) {
			System.out.println("Pay list Not Found");
			return null;
		} else {
			System.out.println("Pay list");
			return list.get(0);
		}
	}

	@Override
	public List<Pay> list() {
		// TODO Auto-generated method stub
		List<Pay> pays = (List<Pay>) sessionFactory.getCurrentSession().createCriteria(Authentication.class)
				.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return pays;

	}

}
