package org.ncu.TravelSite.UserEntity;


import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;




public class User {
	@NotEmpty(message="Please Fill The name")
	private String name;
	@NotEmpty(message="Please Fill The Gender")
	private String gender;
	@Email(message="Email Type")@NotEmpty(message="Empty Email")
	private String email;
	@NotEmpty(message="Password Cannot Be Empty")
	private String password;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "User [name=" + name + ", gender=" + gender + ", email=" + email + ", password=" +password +"]";
	}
	
	
}
