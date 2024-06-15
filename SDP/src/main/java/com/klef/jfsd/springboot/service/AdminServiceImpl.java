package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.ServiceRequests;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.SellerRepository;
import com.klef.jfsd.springboot.repository.ServiceRequestRepository;

@Service
public class AdminServiceImpl implements AdminService {
	
	
	@Autowired
	private AdminRepository adminRepository;
	
	
	@Autowired
	private CustomerRepository customerRepository;


	@Autowired
	private ServiceRequestRepository serviceRequestRepository;
	
	
	@Autowired
	private SellerRepository repository;
	
	
	
	@Override
	public List<Customer> viewallcustomers() {
		
		return customerRepository.findAll();
				
	}

	@Override
	public Customer viewcusbyid(int eid) {
		
		Optional<Customer> obj =  customerRepository.findById(eid);
        
        if(obj.isPresent())
        {
          Customer customer = obj.get();
          
          return customer;
        }
        else
        {
          return null;
        }
        
	}

	@Override
	public String deletecus(int eid) {
		
		Optional<Customer> obj =  customerRepository.findById(eid);
	       
	       String msg = null;
	       
	       if(obj.isPresent())
	       {
	         Customer emp = obj.get();
	         
	         customerRepository.delete(emp);
	         
	         msg = "Customer Deleted Successfully";
	       }
	       else
	       {
	         msg = "Customer Not Found";
	       }
	       
	       return msg;
	       
	}

	@Override
	public Admin checkadminlogin(String uname, String pwd) {
		return adminRepository.checkadminlogin(uname, pwd);
		
	}

	@Override
	public long customercount() {
		return customerRepository.count();
	}

	@Override
	public List<ServiceRequests> viewallrequests() {
		return serviceRequestRepository.findAll();
	}

	@Override
	public int updatecustomerrequeststatus(int eid, boolean status , String date , String serviceType) {
		 return  adminRepository.updatecustomerrequeststatus(eid, status, date, serviceType);
	}

	@Override
	public long servicerequestscount() {
		return serviceRequestRepository.count();
	}

	
	
}
