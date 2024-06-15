package com.klef.jfsd.springboot.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.ServiceRequests;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.CustomerService;
import com.klef.jfsd.springboot.service.SellerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController {
	
	@Autowired
	private AdminService adminService;

	
	@Autowired
	private CustomerService customerService;
	

	@Autowired
	private SellerService  sellerService;

	
	
	
	@GetMapping("/")
	public ModelAndView main() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		
		return mv;
	}
	
	@GetMapping("index")
	public ModelAndView index() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		
		return mv;
	}
	
	@GetMapping("about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("about");
		
		return mv;
	}
	
	@GetMapping("services")
	public ModelAndView services() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("services");
		
		return mv;
	}
	
	
	@GetMapping("/servicesRequestpage")
	public ModelAndView servicesRequestpage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("ServiceRequestPage");
		
		return mv;
	}
	
	
	@GetMapping("/myraiserequests")
	public ModelAndView myraiserequests() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customermyrequestpagedata");
		
		return mv;
	}
	
	
	@GetMapping("/viewallmyraiserequests")
	   public ModelAndView viewallmyraiserequest() {
	     ModelAndView mv=new ModelAndView("customermyrequestpagedata");
	     List<ServiceRequests> br=adminService.viewallrequests();
	     mv.addObject("reqdata", br);
	     return mv;
	   }
	
	
	
	
	@PostMapping("servicesRaiseRequest")
	public ModelAndView servicesRaiseRequest(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = null;
		try {
			
			HttpSession session = request.getSession();
			 int cid =(int)session.getAttribute("id");     //eid is a session variable
			
			String name = request.getParameter("servicename");
			String email = request.getParameter("serviceType");
			String date = request.getParameter("date");
			String time = request.getParameter("time");
			String description = request.getParameter("description");
			
			
			ServiceRequests c = new ServiceRequests();
			c.setId(cid);
			c.setServiceName(name);
			c.setServiceType(email);
			c.setTime(time);
			c.setDate(date);
			c.setDescription(description);
			c.setStatus(false);
			
			msg = customerService.raiseservicerequest(c);
			mv.setViewName("ServiceRequestPage");
		    mv.addObject("message",msg);
			
		}
		catch (Exception e) {
			mv.setViewName("ServiceRequestPage");
			msg = e.getMessage();
		     mv.addObject("message",msg);
		}
		
		return mv;
	}
	
	
	@GetMapping("viewallrequests")
	   public ModelAndView viewallBookRequests() {
	     ModelAndView mv=new ModelAndView("viewservicerequestadmin");
	     List<ServiceRequests> br=adminService.viewallrequests();
	     mv.addObject("reqdata", br);
	     return mv;
	   }
	
	
	
	
	@GetMapping("/customerLogin")
	public ModelAndView customerLogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerLogin");
		
		return mv;
	}
	
	@GetMapping("customerRegistrationPage")
	public ModelAndView customerRegistrationPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerRegistration");
		
		return mv;
	}
	
	
	@PostMapping("customerRegistration")
	public ModelAndView customerRegistration(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = null;
		try {
			String name = request.getParameter("fname");
			String email = request.getParameter("email");
			String gender = request.getParameter("gender");
			String pwd = request.getParameter("pwd");
			String contact = request.getParameter("contact");
			
			
			Customer c = new Customer();
			c.setFullname(name);
			c.setEmail(email);
			c.setGender(gender);
			c.setPassword(pwd);
			c.setContactno(contact);
			
			msg = customerService.addcustomer(c);
			mv.setViewName("customerLogin");
		    mv.addObject("message",msg);
			
		}
		catch (Exception e) {
			mv.setViewName("customerRegistration");
			msg = "Registration Failed & Provide Valid Details";
		     mv.addObject("message",msg);
		}
		
		return mv;
	}
	
	@PostMapping("checkcuslogin")
	public ModelAndView checkemplogin(HttpServletRequest request) {
		
		  String uname = request.getParameter("email"); 
		  String pwd = request.getParameter("pwd"); 
		   
		  Customer emp = customerService.checkcuslogin(uname, pwd); 
		  ModelAndView mv =new ModelAndView(); 
		  if(emp!=null) { 
			  HttpSession session = request.getSession();
			  session.setAttribute("id", emp.getId());    
			  session.setAttribute("fname", emp.getFullname());  
			  session.setAttribute("email", emp.getEmail());
			  
		   mv.setViewName("customerHome"); 
		  } 
		  else { 
		   mv.setViewName("customerLogin"); 
		   mv.addObject("message", "Login Failed & try Again"); 
		  } 
		  return mv; 
	}
	
	@GetMapping("/customerHome")
	public ModelAndView customerHome(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerHome");
		
		HttpSession session = request.getSession();
	     
		 int cid =(int)session.getAttribute("id");     //eid is a session variable
	     String cname = (String) session.getAttribute("fname");   //ename is a session varibale 
	     String cemail = (String) session.getAttribute("email");
	    		 
	     mv.addObject("id", cid);
	     mv.addObject("fname", cname);
	     mv.addObject("email", cemail);
	     
		return mv;
	}

	
	
	@GetMapping("/customerHome/customerprofile")
	public ModelAndView customerprofile(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		 mv.setViewName("customerprofile");
		
		 HttpSession session = request.getSession();
	     
		 int cid =(int)session.getAttribute("id");     //eid is a session variable
		 String cname = (String) session.getAttribute("fname"); 
		 mv.addObject("id", session.getAttribute("id"));
		 mv.addObject("fname", cname);
		 
	     
	     
	    Customer c = customerService.viewcustomerbyid(cid);
	    
	    mv.addObject("cust", c);
	     
	     
		return mv;
	}
	
	
	
	@GetMapping("/customerHome/customerProfileupdatePage")
	public ModelAndView customerProfileupdatePage(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		 
		 mv.setViewName("customerprofileupdatepage");
		 int cid =(int)session.getAttribute("id"); 
		 String cname = (String) session.getAttribute("fname");  
		
		 
		     mv.addObject("id", cid);
		     mv.addObject("fname", cname);    //eid is a session variable
		      
		     
		     Customer c = customerService.viewcustomerbyid(cid);
	        mv.addObject("cus", c);
		
		return mv;
	}
	
	    @PostMapping("update")
	   public ModelAndView updateaction(HttpServletRequest request)
	   {
		
	    	String msg = null;
		    ModelAndView mv = new ModelAndView();
		     HttpSession session = request.getSession();
		       
		     mv.addObject("id", session.getAttribute("id"));
		     mv.addObject("fname", session.getAttribute("fname"));
		     
		     int cid =(int)session.getAttribute("id");     //eid is a session variable
			 
		     try
			    {
			      String name = request.getParameter("fname");
			      String contact = request.getParameter("contact");
			      
			      Customer cus = new Customer();
			       cus.setId(cid);
			       cus.setFullname(name);
			       cus.setContactno(contact);
			       msg = customerService.updatecustomer(cus);
			       mv.setViewName("cutomerLogin");
			       mv.addObject("message",msg);
			      
			    }
			    catch(Exception e)
			    {
			      msg = e.getMessage();
			      
			      mv.setViewName("customerprofileupdatepage");
			       mv.addObject("message",msg);
			    } 
		       
		return mv;
	   }
	   
	
	
	
	
	
	
	
	
	@GetMapping("/customerlogout")
	public ModelAndView logout() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		
		return mv;
	}
	
	
	
	

	//admin
	
	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}
	
	@GetMapping("adminhome")
	public ModelAndView adminhome(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		long countcustomer = adminService.customercount();
		long servicerequestcount=adminService.servicerequestscount();
		mv.addObject("countcus", countcustomer);
		mv.addObject("requestcount", servicerequestcount);
		HttpSession session = request.getSession();
	     
        int aid =(int)session.getAttribute("aid");     //eid is a session variable
	     String aname = (String) session.getAttribute("aname");   //ename is a session varibale 
	     
	     mv.addObject("aid", aid);
	     mv.addObject("aname", aname);
		return mv;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");
		
		Admin a = adminService.checkadminlogin(uname, pwd);
//		long count = adminService.employeecount();
		long servicerequestcount=adminService.servicerequestscount();
     	long countcustomer = adminService.customercount();
		
		ModelAndView mv = new ModelAndView();
		
		if(a != null) {
			mv.setViewName("adminhome");
//			mv.addObject("count", count);
			mv.addObject("countcus", countcustomer);
			mv.addObject("requestcount", servicerequestcount);
			HttpSession session = request.getSession();
			  session.setAttribute("aid", a.getId());    
			  session.setAttribute("aname", a.getUsername()); 
			
		}else {
			mv.setViewName("adminlogin");
			mv.addObject("message","Login Failed");
		}
		return mv;
	}
	
	
	@GetMapping("customerdata")
	public ModelAndView adminseescustomerdata(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("customerdata");
		long countcustomer = adminService.customercount();
		List<Customer> customerlist = adminService.viewallcustomers();
		mv.addObject("cdata", customerlist);
		mv.addObject("countcus", countcustomer);
		HttpSession session = request.getSession();
	     
        int aid =(int)session.getAttribute("aid");     //eid is a session variable
	     String aname = (String) session.getAttribute("aname");   //ename is a session varibale 
	     
	     mv.addObject("aid", aid);
	     mv.addObject("aname", aname);
		return mv;
	}
	
	@GetMapping("view")
	   public ModelAndView viewempdemo(@RequestParam("id") int cid)
	   {
	     Customer cus = adminService.viewcusbyid(cid);
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("viewcustomerbyid");
	     mv.addObject("cus", cus);
	     return mv;
	   }
	
	@GetMapping("delete/{id}")
	public String deleteaction(@PathVariable("id") int cid)
	   {
	    adminService.deletecus(cid);
	    return "redirect:/customerdata";
	   }
	
	
	
	
	
	
	
	
	
//	//seller
//	
//	
//	@GetMapping("/sellerpage")
//	public ModelAndView sellerpage() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("sellerindex");
//		return mv;
//	}
//	
//	@GetMapping("/sellerpage/index")
//	public ModelAndView sellerindex() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("sellerindex");
//		return mv;
//	}
//	@GetMapping("/sellerLoginpage")
//	public ModelAndView sellerloginpage() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("sellerLogin");
//		return mv;
//	}
//
//	@GetMapping("/sellerRegistrationPage")
//	public ModelAndView sellerRegistrationPage() {
//		ModelAndView mv = new ModelAndView();
//		mv.setViewName("sellerRegistration");
//		return mv;
//	}
//	
//	
//	
//	@PostMapping("sellerRegistration")
//	public ModelAndView sellerRegistration(HttpServletRequest request) {
//		ModelAndView mv = new ModelAndView();
//		String msg = null;
//		try {
//			String name = request.getParameter("fname");
//			String email = request.getParameter("email");
//			String gender = request.getParameter("gender");
//			String pwd = request.getParameter("pwd");
//			String contact = request.getParameter("contact");
//			String location = request.getParameter("location");
//			String date = request.getParameter("date");
//			
//			
//			Seller s = new Seller();
//			s.setFullname(name);
//			s.setEmail(email);
//			s.setGender(gender);
//			s.setPassword(pwd);
//			s.setContactno(contact);
//			s.setLocation(location);
//			s.setDate(date);
//			
//			msg = sellerService.addseller(s);
//			mv.setViewName("sellerLogin");
//		    mv.addObject("message",msg);
//			
//		}
//		catch (Exception e) {
//			mv.setViewName("sellerRegistration");
//			msg = "Registration Failed & Provide Valid Details";
//		     mv.addObject("message",msg);
//		}
//		
//		return mv;
//	}
//	
	
	
//	@GetMapping("updatestatus")
//    public ModelAndView updatestatus()
//    {
//      ModelAndView mv=new ModelAndView("viewservicerequestadmin");
//     
//      List<ServiceRequests> reqlist = adminService.viewallrequests();
//      mv.addObject("reqlist", reqlist);
//     return mv;
//    }
	
	
	
	
	
	@GetMapping("/viewmyrequests")
	   public ModelAndView viewmyrequests(HttpServletRequest request) {
	     ModelAndView mv=new ModelAndView();
	     mv.setViewName("customermyrequestpagedata");
	     HttpSession session =request.getSession();
	     session.setAttribute("id",session.getAttribute("id"));
	       int id = (int) session.getAttribute("id");
	       
	       
	     List<ServiceRequests> br=customerService.viewraiserequestbyid(id);
	     mv.addObject("reqdata", br);
	     return mv;
	     
	   }
	

	
	@GetMapping("setstatus")
    public ModelAndView setstatusaction(@RequestParam("id") int eid , @RequestParam("service_status") boolean status ,  @RequestParam("service_date") String date ,@RequestParam("service_name") String servicename ){
      
      int n = adminService.updatecustomerrequeststatus(eid, status, date, servicename);
        
        ModelAndView mv = new ModelAndView();
        mv.setViewName("viewservicerequestadmin");
        
        List<ServiceRequests> reqlist = adminService.viewallrequests();
        mv.addObject("reqdata", reqlist);
        
        if(n>0)
        {
          mv.addObject("message", "Status Updated Successfully");
        }
        else
        {
          mv.addObject("message", "Failed to Update Status");
        }
        return mv;
    }
	
	
	
}
