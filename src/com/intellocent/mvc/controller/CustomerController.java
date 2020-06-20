package com.intellocent.mvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.intellocent.mvc.entity.Customer;
import com.intellocent.mvc.service.CustomerService;

@Controller
@RequestMapping(value = "/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	// @RequestMapping("/list")
	@GetMapping("/list")
	public String getCustomer(Model theModel) {
		List<Customer> theCustomers = customerService.getAll();
		theModel.addAttribute("customers", theCustomers);
		return "customer-index";
	}

	@GetMapping("/addForm")
	public String addCustomerForm(Model theModel) {
		Customer theCustomer = new Customer();
		theModel.addAttribute("customer", theCustomer);
		return "customer-form";
	}

	@PostMapping("/saveForm")
	public String post(@ModelAttribute("customer") Customer theCustomer, Model theModel) {
		customerService.save(theCustomer);
		return "redirect:/customer/list";
	}

	@GetMapping("/updateForm")
	public String updateCustomerForm(@RequestParam("customerId") int theId, Model theModel) {
		Customer theCustomer = customerService.get(theId);
		theModel.addAttribute("customer", theCustomer);
		return "customer-form";
	}

	@GetMapping("/delete")
	public String delete(@RequestParam("customerId") int theId, Model theModel) {
		int status = customerService.delete(theId);
		System.out.println("Delete Status:" + status);
		return "redirect:/customer/list";
	}
}
