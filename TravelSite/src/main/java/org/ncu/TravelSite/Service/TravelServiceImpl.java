package org.ncu.TravelSite.Service;

import java.util.List;

import org.ncu.TravelSite.Dao.TravelDao;
import org.ncu.TravelSite.Entity.Travel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class TravelServiceImpl implements TravelService{

	@Autowired
	private TravelDao travelDao;
		public Travel getOneTravel(String id) {
			// TODO Auto-generated method stub
			Travel travel = travelDao.FetchId(id);
			return travel;
		}
		public List<Travel> fetchname(String title) {
			// TODO Auto-generated method stub
			List<Travel> book = travelDao.fetchRecordByName(title);
			for(Travel tempTravel : book) {
				System.out.println(tempTravel);
			}
			return book;
		}
		public List<Travel> fetchRecord(){
			List<Travel>book = travelDao.Fetch();
			for(Travel tempTravel : book) {
				System.out.print(tempTravel);
			}
			return book;
		}
		public void deleterecord(String id) {
			// TODO Auto-generated method stub
			travelDao.Delete(id);
		}


}
