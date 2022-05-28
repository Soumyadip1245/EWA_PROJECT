package org.ncu.TravelSite.Dao;

import java.util.List;

import org.ncu.TravelSite.Entity.Travel;

public interface TravelDao {
public int Insert(Travel b);
	
	public List<Travel> Fetch();
	
	public int Update(Travel b);
	
	public void Delete(String id);
	
	public Travel FetchId(String id);
	
	public List<Travel> fetchRecordByName(String title) ;
	
	public List<Travel> searchByDestination(String desti,String date);
}
