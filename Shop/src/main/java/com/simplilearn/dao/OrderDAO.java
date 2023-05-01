package com.simplilearn.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.simplilearn.entity.Order;
import com.simplilearn.entity.User;

@Repository
public class OrderDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public List<Order> getOrder() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Order> theQuery = currentSession.createQuery("from Order", Order.class);
		List<Order> orders = theQuery.getResultList();
		return orders;
	}

	@Transactional
	public void saveOrder(Order order) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(order);
	}

	@Transactional
	public Order getOrder(int orderId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Order order = currentSession.get(Order.class, orderId);
		return order;
	}

	@Transactional
	public void deleteOrder(int orderId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuery = currentSession.createQuery("delete from Order where id=:orderId");
		theQuery.setParameter("orderId", orderId);
		theQuery.executeUpdate();

	}

	@Transactional
	public List<Order> getUserOrders(int userId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Order> theQuery = currentSession.createQuery("from Order where user_id =: userId", Order.class);
		theQuery.setParameter("userId", userId);
		List<Order> orders = theQuery.getResultList();
		return orders;
	}

}
