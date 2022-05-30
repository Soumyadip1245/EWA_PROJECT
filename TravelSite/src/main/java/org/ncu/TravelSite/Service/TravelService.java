package org.ncu.TravelSite.Service;

import java.util.List;

import org.ncu.TravelSite.Entity.Travel;

public interface TravelService {
	public Travel getOneTravel(String id);
	public List<Travel>fetchname(String title);
	public List<Travel> fetchRecord();
	public void deleterecord(String id);
}
