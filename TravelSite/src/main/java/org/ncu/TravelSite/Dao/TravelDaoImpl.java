package org.ncu.TravelSite.Dao;

import java.util.List;

import org.ncu.TravelSite.Entity.Travel;
import org.ncu.TravelSite.RowMapper.rowMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
@Repository
public class TravelDaoImpl implements TravelDao{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	public int Insert(Travel b) {
		// TODO Auto-generated method stub
		String query = "insert into hoteldetails values(?,?,?,?,?,?)";
		Object records[] = {b.getHotelid(),b.getHotelname(),b.getHotelDestination(),b.getHotelDate(),b.getHotelPrice(),b.getHotelContact()}; 
		int a =jdbcTemplate.update(query, records);
		System.out.println("Records added successfully! "+b.getHotelid());
		return a;
	}

	public List<Travel> Fetch() {
		// TODO Auto-generated method stub
		String query = "select * from hoteldetails";
		RowMapper<Travel> rowMap = new rowMapper();
		List<Travel> Travel =jdbcTemplate.query(query,rowMap );
		return Travel;
	}

	public int Update(Travel b) {
		// TODO Auto-generated method stub
		String sql = "update hoteldetails set HotelDate = ?, HotelPrice=? where Hotelid = ?";
		Object[] args = {b.getHotelDate(),b.getHotelPrice(),b.getHotelid()};
		int Travel = jdbcTemplate.update(sql, args);
		return Travel;
	}

	public void Delete(String id) {
		// TODO Auto-generated method stub
		String query = "delete from hoteldetails where Hotelid =?";
		jdbcTemplate.update(query,id);
	}
//
	public Travel FetchId(String Hotelid) {
		// TODO Auto-generated method stub
		String query = "select * from hoteldetails where Hotelid = ?";
		Travel Travel = jdbcTemplate.queryForObject(query, new rowMapper(), Hotelid);
		return Travel;
	}

	public List<Travel> fetchRecordByName(String title) {
		// TODO Auto-generated method stub
		String query = "select * from hoteldetails where Hotelname = ?";
		RowMapper<Travel> rowMapper = new rowMapper();
		List<Travel> list = jdbcTemplate.query(query,rowMapper,title);
		return list;
	}

	public List<Travel> searchByDestination(String desti, String date) {
		// TODO Auto-generated method stub
		String query = "select * from hoteldetails where HotelDesitination ='"+desti+"' and HotelDate ='"+date+"'";
		RowMapper<Travel> rowMap = new rowMapper();
		List<Travel> tra =jdbcTemplate.query(query,rowMap);
		return tra;
		
	}	
}
