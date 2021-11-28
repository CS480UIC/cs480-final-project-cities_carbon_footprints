package city.service;

import java.util.List;

import city.dao.CityDao;
import city.domain.City;
/**
 * logic functions such as register, login
 * @author Aayush Makharia
 */
public class CityService {
	private CityDao cityDao = new CityDao();

	public void createCity(City form) throws CityException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		cityDao.createCity(form);
	}
	
	public City findCity(String cityName) throws CityException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		return cityDao.findCity(cityName);
	}
	
	public void updateCity(City form) throws CityException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		cityDao.update(form);
	}
	
	public void deleteCity(String cityName) throws CityException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		cityDao.delete(cityName);
	}
}
