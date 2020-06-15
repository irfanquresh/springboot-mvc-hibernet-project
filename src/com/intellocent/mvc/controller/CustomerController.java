package com.intellocent.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/customer")
public class CustomerController {

	@RequestMapping("/list")
	public String listCustomer(Model theModel) {
		return "list-customers";
	}
}
