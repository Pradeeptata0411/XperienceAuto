package com.klef.jfsd.springboot.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.ServiceRequests;


@Repository
public interface ServiceRequestRepository extends JpaRepository<ServiceRequests, String> {

	@Query("select s from ServiceRequests s where id=?1")
	public List<ServiceRequests> viewrequestbyid(int id);
	
	
	
}
