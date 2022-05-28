package org.ncu.TravelSite.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.ncu.TravelSite.UserEntity.User;
import org.springframework.jdbc.core.RowMapper;

public class RegistrationRowMapper implements RowMapper<User> {

	public User mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		User u = new User();
		u.setName(rs.getString("Name"));
		u.setGender(rs.getString("Gender"));
		u.setEmail(rs.getString("Email"));
		u.setPassword(rs.getString("Password"));
		return u;
	}

}
