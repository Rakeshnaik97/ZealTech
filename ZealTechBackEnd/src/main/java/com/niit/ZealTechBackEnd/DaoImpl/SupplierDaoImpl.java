package com.niit.ZealTechBackEnd.DaoImpl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ZealTechBackEnd.Dao.SupplierDao;
import com.niit.ZealTechBackEnd.Model.Category;
import com.niit.ZealTechBackEnd.Model.Supplier;

@Transactional
@Repository
@EnableTransactionManagement
public class SupplierDaoImpl implements SupplierDao {

	@Autowired
	SessionFactory sessionFactory;

	public SupplierDaoImpl(SessionFactory sessionFactory) {
		// TODO Auto-generated constructor stub
		this.sessionFactory = sessionFactory;
	}

	@Override
	public boolean saveorupdateSupplier(Supplier supplier) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
		return true;
	}

	@Override
	public boolean deleteSupplier(Supplier supplier) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().delete(supplier);
		return true;
	}

	@Override
	public Supplier getSupplier(String SupplierId) {
		// TODO Auto-generated method stub
		String s = "From Supplier Where SupplierId='" + SupplierId + "'";
		Query q = sessionFactory.getCurrentSession().createQuery(s);
		List<Supplier> list = (List<Supplier>) q.list();
		if (list == null || list.isEmpty()) {
			System.out.println("Supplier List Not Found");
			return null;
		} else {
			System.out.println("Supplier list");
			return list.get(0);
		}
	}

	@Override
	public List<Supplier> list() {
		// TODO Auto-generated method stub
		List<Supplier> supplier = (List<Supplier>) sessionFactory.getCurrentSession().createCriteria(Supplier.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return supplier;

	}

}
