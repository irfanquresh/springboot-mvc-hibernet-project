package com.intellocent.mvc.service;

import java.util.List;

import com.intellocent.mvc.entity.Customer;

public interface CustomerService {
	public List<Customer> getAll();

	public Customer save(Customer theCustomer);

	public Customer get(int theId);

	public int delete(int theId);
}
