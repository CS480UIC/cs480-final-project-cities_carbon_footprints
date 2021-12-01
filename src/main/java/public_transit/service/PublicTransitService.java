package public_transit.service;

import java.util.List;

import city.dao.CityDao;
import city.domain.City;
import public_transit.dao.PublicTransitDao;
import public_transit.domain.PublicTransit;
import vehicle.dao.VehicleDao;
import vehicle.domain.Vehicle;
/**
 * logic functions such as register, login
 * @author Aayush Makharia
 */
public class PublicTransitService {
	private PublicTransitDao ptDao = new PublicTransitDao();

	public void createPublicTransit(PublicTransit form) throws PublicTransitException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		ptDao.createPublicTransit(form);
	}
	
	public PublicTransit findPublicTransit(String tType, String tEmissionType) throws PublicTransitException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		return ptDao.findPublicTransit(tType, tEmissionType);
	}
	
	public void updatePublicTransit(PublicTransit form) throws PublicTransitException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		ptDao.update(form);
	}
	
	public void deletePublicTransit(String ptName, String type) throws PublicTransitException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		ptDao.delete(ptName, type);
	}
}
