package org.ncu.TravelSite.Dao;

import java.util.List;

import org.ncu.TravelSite.UserEntity.User;

public interface RegistrationDao {

	public int createUser(User u);
	public int updateRecord(User us);
	public List<User> UserDetails(User user);
}

