package com.klef.jfsd.springboot.service;


import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Seller;

public interface SellerService {

	public String addseller(Seller s);
	public String updateseller(Seller s);
	public Seller viewsellerbyid(int sid);
	public Seller checkselllogin(String email , String pwd) ;
	
	public Customer viewcustomerbyid(int cid);
}
