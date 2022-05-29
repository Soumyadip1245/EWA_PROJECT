package org.ncu.TravelSite.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.ncu.TravelSite.Entity.Travel;
import org.springframework.jdbc.core.RowMapper;



public class rowMapper implements RowMapper<Travel>{

	public Travel mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Travel travel = new Travel();
		travel.setHotelid(rs.getString("Hotelid"));
		travel.setHotelname(rs.getString("Hotelname"));
		travel.setHotelDestination(rs.getString("HotelDesitination"));
		travel.setHotelDate(rs.getString("HotelDate"));
		travel.setHotelPrice(rs.getInt("HotelPrice"));
		travel.setHotelContact(rs.getString("HotelContact"));
		return travel;
	}



	

}
