package vehicle.service;

import java.util.List;

import city.dao.CityDao;
import city.domain.City;
import vehicle.dao.VehicleDao;
import vehicle.domain.Vehicle;
/**
 * logic functions such as register, login
 * @author Aayush Makharia
 */
public class VehicleService {
	private VehicleDao vehicleDao = new VehicleDao();

	public void createVehicle(Vehicle form) throws VehicleException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		vehicleDao.createVehicle(form);
	}
	
	public Vehicle findVehicle(String vehicleName, String type) throws VehicleException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		return vehicleDao.findVehicle(vehicleName, type);
	}
	
	public void updateVehicle(Vehicle form) throws VehicleException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		vehicleDao.update(form);
	}
	
	public void deleteVehicle(String vehicleName, String type) throws VehicleException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		vehicleDao.delete(vehicleName, type);
	}
}
