package org.ncu.TravelSite.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.ncu.TravelSite.Dao.RegistrationDao;
import org.ncu.TravelSite.Dao.TravelDao;
import org.ncu.TravelSite.Entity.Travel;
import org.ncu.TravelSite.Service.TravelService;
import org.ncu.TravelSite.UserEntity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class TravelController {
	
	 @Autowired
		private TravelDao travelDao;
	      @Autowired
	      private TravelService travelService;
	      
	      @Autowired 
	      private RegistrationDao regDao;
	      
	      @ModelAttribute("travel")
	  	public Travel getTravel() {
	  		return new Travel();
	  	}
	      @ModelAttribute("user")
	      public User getUser() {
	    	  return new User();
	      }
	  	@RequestMapping("/list")
	  	public String showTravelList(Model model,HttpSession request) {
	  		System.out.println("Session Value: "+request.getAttribute("username"));
	  		String sessionvalue = (String) request.getAttribute("username");
	  		if(sessionvalue == null)
	  		{
	  			return "login";
	  		}
	  		else
	  		{
	  			List<Travel> travelList = travelService.fetchRecord();
		  		model.addAttribute("travel", travelList);
		  		return "AdminPanel";
	  		}
	  		
	  	}
	  	
	  	@RequestMapping("/form")
	  	public String showTravelForm() {
	  		return "form";
	  	}
	  	@RequestMapping("/processForm")
	  	public String processsForm(@ModelAttribute("travel")Travel travel) {
	  		if(travelDao.Insert(travel)==1) {
	  			System.out.println("Record inserted successfully");}
	  		else {
	  			System.out.println("Error");
	  	}
	  		return "redirect:/list";
	  	}
	  	@RequestMapping("/updateForm")
	  	public String showUpdateForm(@RequestParam("HotelId")String TravelId,@ModelAttribute("travel") Travel travel, Model model) {
	  		
	  		System.out.println("Getting the travel data for id: "+TravelId);
	  		travel = travelService.getOneTravel(TravelId);
	  		/* send the employee object to view */
	  		 System.out.println("travel Id : "+travel);
	  		 model.addAttribute(travel);
	  		return "updateForm";
	  	}
	  	@RequestMapping("/ViewId")
	  	public String viewId(@RequestParam("search")String TravelTitle,Travel travel, Model model) {
	  		List<Travel> travel1 = travelService.fetchname(TravelTitle);
	  		model.addAttribute("travel",travel1);
	  		return "viewlist";
	  		
	  	}
	  	/* Controller mapping for processing the update operation */
	  	@RequestMapping("/processUpdate")
	  	public String processUpdateForm(@ModelAttribute("travel") Travel travel) {
	  		
	  		travelDao.Update(travel);
	  		if(travelDao.Update(travel) == 1) {
	  			System.out.println("Record update successfully!!");
	  		}else {
	  			System.out.println("Error!!!");
	  		}
	  		return "redirect:/list";
	  	}
	  	
	  	/* Controller mapping for processing the delete operation */
	  	@RequestMapping("/deleteRecord")
	  	public String deleteStudent(@RequestParam("HotelId")String id) {
	  		travelService.deleterecord(id);
	  		return "redirect:/list";
	  	}
	 // Login and registration
	  	@RequestMapping("/registration")
	  	public String processsForm(@ModelAttribute("user") User user) {
			
			return "login";
		}
	  	@RequestMapping("/register")
	  	public String registerForm(@Valid @ModelAttribute("user")User user, BindingResult bindingresult)
	  	{
	  		if(bindingresult.hasErrors())
	  		{
	  			System.out.println("Validations: "+bindingresult);
	  			return "login";
	  			
	  		}
	  		else
	  		{
	  			if(regDao.createUser(user)==1)
					System.out.println("Record inserted successfully");
				else
					System.out.println("Error");
	           return "login";
	  		}
	  		
	  	}
	  	
	  	
	    @RequestMapping("/LoginDetails")
	    public String Register(@ModelAttribute("user")User user,Model model,HttpSession request)
	    {
	    	
	    		System.out.println("user "+user.getName());
		    	String Fetchusername="null";
		    	String Fetchpassword="null";
		    	List<User> user1 = regDao.UserDetails(user);
		    	for(User u : user1)
		    	{
		    		System.out.println(u);
		    		Fetchusername = u.getName(); 
		    		Fetchpassword = u.getPassword(); 
		    	}
		    	if (user.getName().equals("Admin") && user.getPassword().equals("Admin1245"))
		    	{
		    		//session management
		    		request.setAttribute("username", user.getName());
		    		
//		    		String sessionvalue=(String) request.getAttribute("username");
		    		
		    			
//			    		System.out.println("Session creation: "+request.getAttribute("username"));
//		    			List<Travel> travelList = travelService.fetchRecord();
//				  		model.addAttribute("travel", travelList);
			    		return "redirect:/session";
		    		
			    		
		    		
		    	}
		    	else if(user.getName().equals(Fetchusername) && user.getPassword().equals(Fetchpassword))
		    	{
		    		return "travel";
		    	}
		    	else
		    	{
		    		return "login";
		    	}

	    	
	    		
	    	
	    }
	    @RequestMapping("/session")
	    public String forsession(@ModelAttribute("user") User user,HttpSession request,Model model)
	    {
	    	System.out.println("check session: "+request.getAttribute("username"));
	    	String sessionvalue = (String) request.getAttribute("username");
	    	if(sessionvalue==null)
	    	{
	    		return "login";
	    	}
	    	else
	    	{
	    		List<Travel> travelList = travelService.fetchRecord();
		  		model.addAttribute("travel", travelList);
		  		
	    		return "AdminPanelManageButton";
	    	}
	    	
	    }
	    @RequestMapping("/Search")
	    public String SearchHotel(@RequestParam("desti") String Fetchdesti, @RequestParam("date") String Fetchdate,Travel travel,Model model)
	    {
	    	System.out.println("FetchDesti: "+Fetchdesti);
	    	System.out.println("FetchDate: "+Fetchdate);
	    	List<Travel> travel1 = travelDao.searchByDestination(Fetchdesti,Fetchdate);
	    	model.addAttribute("travel",travel1);
	    	System.out.println(travel1);

	    	
			return "UserWLogin";
			
	    }
	    
	    @RequestMapping("/bookHotel")
	    public String BookHotel(@RequestParam("HotelId")String HotelId,@ModelAttribute("travel") Travel travel, Model model,HttpSession session)
	    {
	    	
	    	System.out.println("Getting the Hotel data for id: "+HotelId);
	  		travel = travelService.getOneTravel(HotelId);
	  		session.setAttribute("price", travel.getHotelPrice());
	  		session.setAttribute("name", travel.getHotelname());
	  		session.setAttribute("date", travel.getHotelDate());
	  		session.setAttribute("id", travel.getHotelid());
	  		session.setAttribute("desti", travel.getHotelDestination());
	  		System.out.println(travel.getHotelPrice());
	  		/* send the employee object to view */
	  		 System.out.println("travel Id : "+travel);
	  		 model.addAttribute(travel);
	  		return "hotelBooking";
	    }
	    @RequestMapping("/BookingHotel")
	    public String BookingDetails(@RequestParam("name")String bname,@RequestParam("cdate")String bdate,@RequestParam("coutdate")String boutdate,@RequestParam("members")String bmembers,@RequestParam("room")int broom,@RequestParam("vehicles")String bvehicles,Model model,HttpSession session )
	    {
	    	int price = (Integer) session.getAttribute("price");
	    	String name = (String) session.getAttribute("name");
	    	String date = (String) session.getAttribute("date");
	    	String id = (String) session.getAttribute("id");
	    	String desti = (String) session.getAttribute("desti");
	    	
	    	model.addAttribute("price",price);
	    	model.addAttribute("name",name);
	    	model.addAttribute("date",date);
	    	model.addAttribute("cdate",bdate);
	    	model.addAttribute("coutdate",boutdate);
	    	model.addAttribute("id",id);
	    	model.addAttribute("username",bname);
	    	model.addAttribute("car",bvehicles);
	    	model.addAttribute("member",bmembers);
	    	model.addAttribute("rooms",broom);
	    	model.addAttribute("destination",desti);
	    	
	    	int max = 2500;
	        int min = 1500;
	        int range = max - min + 1;

	        // generate random numbers within 1 to 10
	       
	            int r = (int)(Math.random() * range) + min; 
	            
	            model.addAttribute("random", r);
	    	
	    	System.out.println("asdfghjk: " +bname);
	    	System.out.println(price);
	    	double discount = 00;
	    	if(broom>=2)
	    	{
	    		discount = 0.2*price;
	    		
	    	}
	    	else
	    	{
	    		discount = 0.05*price;
	    	}
	    	double dis =broom*discount;
	    	model.addAttribute("discount",dis);
	    	int pprice = broom*price;
	    	model.addAttribute("totalprice",pprice);
	    	
	    	double totalprice = (price-discount)*broom;
	    	model.addAttribute("subtotalprice",totalprice);
	    	
	    	
			return "bill";
	    	
	    }
	    @RequestMapping("/Logout")
	       public String LogoutSession(HttpSession request)
	       {
	    	request.invalidate();
	    	
	        return "login";

	       }
	   
	  }
