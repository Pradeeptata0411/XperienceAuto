package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.springboot.model.Admin;

import jakarta.transaction.Transactional;

@Repository
public interface AdminRepository extends JpaRepository<Admin, Integer> {

	@Query("select a from Admin a where a.username=?1 and a.password=?2 ")
	public Admin checkadminlogin(String uname , String pwd); 
	
	
	  @Modifying
	  @Transactional  //commit changes
	  @Query("update ServiceRequests e set e.status=?2 where e.id=?1 and e.date=?3 and e.serviceName=?4" )
	  public int updatecustomerrequeststatus(int eid,boolean status , String date , String serviceType);
	
	
}
