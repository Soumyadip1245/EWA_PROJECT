package org.ncu.TravelSite.controller;

import java.util.List;

import org.ncu.TravelSite.Dao.RegistrationDao;
import org.ncu.TravelSite.Dao.TravelDao;
import org.ncu.TravelSite.Entity.Travel;
import org.ncu.TravelSite.Service.TravelService;
import org.ncu.TravelSite.UserEntity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	  	public String showTravelList(Model model) {
	  		List<Travel> travelList = travelService.fetchRecord();
	  		model.addAttribute("travel", travelList);
	  		return "AdminPanel";
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
	  	public String registerForm(@ModelAttribute("user")User user)
	  	{
	  		if(regDao.createUser(user)==1)
				System.out.println("Record inserted successfully");
			else
				System.out.println("Error");
           return "login";
	  	}
	  	
	  	
	    @RequestMapping("/LoginDetails")
	    public String Register(@ModelAttribute("user") User user,Model model)
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
	    		List<Travel> travelList = travelService.fetchRecord();
		  		model.addAttribute("travel", travelList);
	    		return "AdminPanel";
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
	    
	    @RequestMapping("/Search")
	    public String SearchHotel(@RequestParam("desti") String Fetchdesti, @RequestParam("date") String Fetchdate,Travel travel,Model model)
	    {
	    	System.out.println("FetchDesti: "+Fetchdesti);
	    	System.out.println("FetchDate: "+Fetchdate);
	    	List<Travel> travel1 = travelDao.searchByDestination(Fetchdesti,Fetchdate);
	    	model.addAttribute("travel",travel1);
	    	System.out.println(travel1);
//	    	for(Travel t : travel1)
//	    	{
//	    	System.out.println(t);
//	    	}
	    	
			return null;
			
	    }
	  }
