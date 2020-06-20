package com.intellocent.mvc.dao;

import java.util.List;

import com.intellocent.mvc.entity.Customer;

public interface CustomerDAO {

	public List<Customer> getAll();

	public Customer save(Customer theCustomer);

	public Customer get(int theId);

	public int delete(int theId);
}
