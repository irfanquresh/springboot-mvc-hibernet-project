package com.intellocent.mvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.intellocent.mvc.dao.CustomerDAO;
import com.intellocent.mvc.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerDAO dao;

	@Override
	@Transactional
	public List<Customer> getAll() {
		List<Customer> customers = dao.getAll();
		return customers;
	}

	@Override
	@Transactional
	public Customer save(Customer theCustomer) {
		Customer customer = dao.save(theCustomer);
		return customer;
	}

	@Override
	@Transactional
	public Customer get(int theId) {
		Customer customer = dao.get(theId);
		return customer;
	}

	@Override
	@Transactional
	public int delete(int theId) {
		int status = dao.delete(theId);
		return status;
	}

}
