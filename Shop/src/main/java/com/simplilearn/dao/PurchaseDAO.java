package com.simplilearn.dao;

import java.math.BigInteger;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.simplilearn.entity.Product;
import com.simplilearn.entity.Purchase;
import com.simplilearn.entity.User;

@Repository
public class PurchaseDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public List<Purchase> getUserPurchases(int user_id) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Purchase> theQuery = currentSession.createQuery("from Purchase_products WHERE user_id=:user_id", Purchase.class);
		theQuery.setParameter("user_id", user_id);
		List<Purchase> purchases = theQuery.getResultList();
		return purchases;
	}

	@Transactional
	public List<Purchase> getPurchases() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Purchase> theQuery = currentSession.createQuery("from Purchase_products", Purchase.class);
		List<Purchase> purchases = theQuery.getResultList();
		return purchases;
	}

	@Transactional
	public void savePurchase(User user, List<Product> products) {
		Session currentSession = sessionFactory.openSession();
	    Transaction txn = currentSession.beginTransaction();

		for(Product p: products) {
			
			Query<Purchase> query1 = currentSession.createQuery("insert purchases (user_id) values (:user_id)", Purchase.class);
			query1.setParameter("user_id", user.getId());
			
			query1.executeUpdate();
			
			BigInteger purchase_id = (BigInteger) currentSession.createSQLQuery("SELECT LAST_INSERT_ID()")
                    .uniqueResult();
			
			Query<Purchase> query2 = currentSession.createQuery("insert purchase_products (purchase_id, product_id) values (:purchase_id, :product_id)", Purchase.class);
			query2.setParameter("purchase_id", purchase_id);
			query2.setParameter("product_id", p.getId());
			
			query2.executeUpdate();
		}
		txn.commit();
	}
	
}