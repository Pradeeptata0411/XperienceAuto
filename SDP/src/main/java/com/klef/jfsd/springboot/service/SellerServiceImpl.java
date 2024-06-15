package com.klef.jfsd.springboot.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Seller;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.SellerRepository;


@Service
public class SellerServiceImpl implements SellerService {

	
	
	@Autowired
	private SellerRepository sellerRepository;
	
	
	@Autowired
	private CustomerRepository customerRepository;
	
	
	@Override
	public String addseller(Seller s) {
		sellerRepository.save(s);
		return "Registration Sucessfull";
	}

	@Override
	public String updateseller(Seller s) {
		
		Seller seller = sellerRepository.findById(s.getId()).get();
		seller.setFullname(s.getFullname());
		seller.setEmail(s.getEmail());
		seller.setGender(s.getGender());
		seller.setContactno(s.getContactno());
		seller.setDate(s.getDate());
		seller.setLocation(s.getLocation());
		seller.setPassword(s.getPassword());
		
		
		sellerRepository.save(s);
		
		
		return "Updated Sucessfully ";
	}

	@Override
	public Seller viewsellerbyid(int sid) {
		
		Optional<Seller> obj =  sellerRepository.findById(sid);
		  
		  if(obj.isPresent()){
		   Seller s = obj.get();
		   return s;
		  }
		  else{
		          return null;
		     }
	}

	@Override
	public Seller checkselllogin(String email, String pwd) {
		
		return sellerRepository.checkselllogin(email, pwd);
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

}
