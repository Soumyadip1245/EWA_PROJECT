package org.ncu.MidTermProjectEvaluation.controller;

import java.util.ArrayList;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
public class Store {
	@NotEmpty
	private String username;
	@NotEmpty
	private String password;
	
	@Email
	private String email;
	@NotEmpty
	private String usertype;
	private ArrayList <String>usertypearraylist;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	public ArrayList<String> getUsertypearraylist() {
		return usertypearraylist;
	}
	public void setUsertypearraylist(ArrayList<String> usertypearraylist) {
		this.usertypearraylist = usertypearraylist;
	}
	public Store() {
		usertypearraylist = new ArrayList<String>();
		usertypearraylist.add("Seller");
		usertypearraylist.add("Buyer");
		}
	
}
