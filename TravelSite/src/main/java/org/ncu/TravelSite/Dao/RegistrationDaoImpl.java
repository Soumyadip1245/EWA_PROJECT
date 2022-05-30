package org.ncu.TravelSite.Dao;

import java.util.List;

import org.ncu.TravelSite.RowMapper.RegistrationRowMapper;
import org.ncu.TravelSite.UserEntity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class RegistrationDaoImpl implements RegistrationDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	public int createUser(User u) {
		String query = "insert into registration values(?,?,?,?)";
		Object records[] = {u.getName(), u.getGender(), u.getEmail(), u.getPassword()}; 
		int a =jdbcTemplate.update(query, records);
		System.out.println("Records added successfully! "+u.getName());
		return a;
	}

	public List<User> UserDetails(User u) {
		String query = "select * from registration where name ='"+u.getName()+"'";
		RowMapper<User> rowMap = new RegistrationRowMapper();
		List<User> user =jdbcTemplate.query(query,rowMap );
		return user;
		}

	public int updateRecord(User us) {
		String sql = "update registration set user_email = ? where user_name = ?";
		Object[] args = {us.getEmail(),us.getName()};
		int recordsUpdated = jdbcTemplate.update(sql, args);
		return recordsUpdated;
	}

	
	
}

