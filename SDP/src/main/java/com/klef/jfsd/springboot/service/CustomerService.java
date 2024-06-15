package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.ServiceRequests;



public interface CustomerService {

	public String addcustomer(Customer c);
	public String updatecustomer(Customer c);
	public Customer viewcustomerbyid(int cid);
	public Customer checkcuslogin(String email , String pwd) ;
	public String raiseservicerequest(ServiceRequests servicerequests);
	
	public List<ServiceRequests> viewraiserequestbyid(int id);
	
}
