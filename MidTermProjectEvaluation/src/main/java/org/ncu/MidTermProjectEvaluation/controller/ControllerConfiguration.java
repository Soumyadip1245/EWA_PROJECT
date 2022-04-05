package org.ncu.MidTermProjectEvaluation.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/ControllerConfiguration")
public class ControllerConfiguration {
	@ModelAttribute("store")
	public Store getStore()
	{
		return new Store();
	}
	@RequestMapping("/Login1")
	public String Redirect()
	{
		return "Login";
		
	}
	//For Registration
	@RequestMapping("/Login")
	public String Login(@Valid @ModelAttribute("store") Store store, BindingResult bindingresult,HttpSession session, Model model)
	{
		
		if(bindingresult.hasErrors())
		{
			return "Login";
		}
		else
		{
			
			session.setAttribute("Registeredusername", store.getUsername());
			session.setAttribute("Registeredpassword",store.getPassword());
			session.setAttribute("Registeredusertype",store.getUsertype());
			System.out.println("value: "+store.getEmail());
			System.out.println("Value: "+store.getUsername());
			System.out.println("Value: "+store.getPassword());
			return "Register";
		}
		
	}
	//For Login	
	@RequestMapping("/LoginPage")
	public String LoginLoad()
	{
		return "Register";
		
	}
	@RequestMapping("LoginDetails")
	public String Register(@ModelAttribute("store") Store store,@RequestParam("username1")String fetchname, @RequestParam("password1")String fetchpassword ,HttpSession session, Model model)
	{
		String fetchedname=(String) session.getAttribute("Registeredusername");
		String fetchedpassword=(String) session.getAttribute("Registeredpassword");
		String fetchedusertype=(String) session.getAttribute("Registeredusertype");
		if(fetchedusertype.equals("Seller"))
		{
			System.out.println("Seller");
			if(fetchname.equals(fetchedname)&&fetchpassword.equals(fetchedpassword))
			{
				
				System.out.println(fetchname);
				System.out.println("Bean class: "+fetchedname);
				System.out.println("Login Successful");
				return "Seller";
			}
			else
			{
				System.out.println("Bean Class: "+fetchedpassword);
				System.out.println("Login unsuccessful");
				return "Register";
			}
		}
		else
		{
			System.out.println("Buyer");
			if(fetchname.equals(fetchedname)&&fetchpassword.equals(fetchedpassword))
			{
				
				System.out.println(fetchname);
				System.out.println("Bean class: "+fetchedname);
				System.out.println("Login Successful");
				return "Buyer";
			}
			else
			{
				System.out.println("Bean Class: "+fetchedpassword);
				System.out.println("Login unsuccessful");
				return "Register";
			}
		}
	}

	@RequestMapping("/Seller")
	public String Seller(@RequestParam("productname")String fetchedpname,@RequestParam("category")String fetchedcategory,@RequestParam("description")String fetcheddescription,@RequestParam("price")String fetchedprice,HttpSession session)
	{
		session.setAttribute("Product_name", fetchedpname);
		session.setAttribute("Product_Category", fetchedcategory);
		session.setAttribute("Product_Description", fetcheddescription);
		session.setAttribute("Product_Price", fetchedprice);
		return "Buyer";	
	}
	@RequestMapping("/BuyerProduct")
	public String Buyer(HttpSession session,Model model)
	{
		String fetchedPname=(String) session.getAttribute("Product_name");
		String fetchedPcategory=(String) session.getAttribute("Product_Category");
		String fetchedPdesc=(String) session.getAttribute("Product_Description");
		String fetchedPprice=(String) session.getAttribute("Product_Price");
		model.addAttribute("Pname", fetchedPname);
		model.addAttribute("Pcategory", fetchedPcategory);
		model.addAttribute("Pdesc", fetchedPdesc);
		model.addAttribute("Pprice", fetchedPprice);
		return "BuyerProducts";
	}
	@RequestMapping("/Bill")
	public String Bill(HttpSession session,Model model)
	{
		String fetchedPname=(String) session.getAttribute("Product_name");
		String fetchedPcategory=(String) session.getAttribute("Product_Category");
		String fetchedPdesc=(String) session.getAttribute("Product_Description");
		String fetchedPprice=(String) session.getAttribute("Product_Price");
		model.addAttribute("Pname", fetchedPname);
		model.addAttribute("Pcategory", fetchedPcategory);
		model.addAttribute("Pdesc", fetchedPdesc);
		model.addAttribute("Pprice", fetchedPprice);
		return "Bill";
		
	}
}
