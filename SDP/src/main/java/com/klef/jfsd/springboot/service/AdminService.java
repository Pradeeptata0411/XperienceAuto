package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.ServiceRequests;

public interface AdminService {

	public List<Customer> viewallcustomers();
	public Customer viewcusbyid(int eid);
	public String deletecus(int eid);
	public Admin checkadminlogin(String uname,String pwd);
	
	public long customercount();  
	public long servicerequestscount();
    public List<ServiceRequests> viewallrequests();
    public int updatecustomerrequeststatus(int eid,boolean status , String date , String serviceType);
}
