package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.ServiceRequests;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.ServiceRequestRepository;


@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerRepository customerRepository;
	
	
	@Autowired
	private ServiceRequestRepository serviceRequestRepository;
	
	
	@Override
	public String addcustomer(Customer c) {
		customerRepository.save(c);
		return "Registration Sucessfull";
	}

	@Override
	public String updatecustomer(Customer c) {
		
		Customer cust = customerRepository.findById(c.getId()).get();
	      
        cust.setFullname(c.getFullname());
        cust.setContactno(c.getContactno());
        
    
        customerRepository.save(cust);
      
      return "Customer Updated Successfully";
	}

	
	@Override
	public Customer viewcustomerbyid(int cid) {
		Optional<Customer> obj =  customerRepository.findById(cid);
		  
		  if(obj.isPresent()){
		   Customer c = obj.get();
		   return c;
		  }
		  else{
		          return null;
		     }
			
	}

	@Override
	public Customer checkcuslogin(String email, String pwd) {
		return customerRepository.checkcuslogin(email, pwd);
		
	}

	@Override
	public String raiseservicerequest(ServiceRequests servicerequests) {
		serviceRequestRepository.save(servicerequests);
		return "Service Raise Request Sucessfull";
	}

	
	@Override
	public List<ServiceRequests> viewraiserequestbyid(int id) {
		return serviceRequestRepository.viewrequestbyid(id);
	}

	

	

}
