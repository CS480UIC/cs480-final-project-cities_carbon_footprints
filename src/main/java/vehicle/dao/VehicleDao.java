package vehicle.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import city.domain.City;
import entity1.domain.Entity1;
import user.domain.User;
import vehicle.domain.Vehicle;



/**
 * DDL functions performed in database
 */
public class VehicleDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "cities_carbon_footprints";  //TODO change user
	
	/**
	 * password of your username to connect to the database
	 */
	private String MySQL_password = "CS480ROCKS";  //TODO change password
	
	/**
	 * CreateCity
	 */
	public void createVehicle(Vehicle form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cities_carbon_footprints", MySQL_user, MySQL_password);
			
			String sql = "INSERT INTO vehicle (vehicle_type, vehicle_emission_type, gas_mileage, vehicle_city, vehicle_date) VALUES (?,?,?,?,?)";
			
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			
		    preparestatement.setString(1,form.getVehicleType());
		    preparestatement.setString(2,form.getVehicleEmissionType());
		    preparestatement.setFloat(3,form.getGasMileage());
		    preparestatement.setString(4,form.getVehicleCity());
		    preparestatement.setString(5,form.getVehicleDate());
		    
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * FindCity
	 */
	public Vehicle findVehicle(String vehicleName, String type) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		Vehicle vehicle = new Vehicle();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cities_carbon_footprints", MySQL_user, MySQL_password);
		
			String sql = "SELECT * FROM vehicle WHERE vehicle_type=? AND vehicle_emission_type=?";
			
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			
		    preparestatement.setString(1,vehicleName);
		    preparestatement.setString(2,type);
		    
		    ResultSet resultSet = preparestatement.executeQuery();
		    while(resultSet.next()){
		    	String vehicleType = resultSet.getString("vehicle_type");
		    	if(vehicleType.equals(vehicleName)){
		    		vehicle.setVehicleType(vehicleType);
		    		vehicle.setVehicleEmissionType(resultSet.getString("vehicle_emission_type"));
		    		vehicle.setGasMileage(resultSet.getFloat("gas_mileage"));
		    		vehicle.setVehicleCity(resultSet.getString("vehicle_city"));
		    		vehicle.setVehicleDate(resultSet.getString("vehicle_date"));
		    	}
		    }
		    System.out.println(vehicle);
		
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		
		return vehicle;
	}
	
	/**
	 * @param form
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void update(Vehicle form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cities_carbon_footprints", MySQL_user, MySQL_password);
			
			String sql = "UPDATE vehicle SET gas_mileage = ?, vehicle_city = ?, vehicle_date = ? where vehicle_type = ? AND vehicle_emission_type = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			
		    preparestatement.setFloat(1,form.getGasMileage());
			preparestatement.setString(2,form.getVehicleCity());
		    preparestatement.setString(3,form.getVehicleDate());
		    preparestatement.setString(4,form.getVehicleType());
		    preparestatement.setString(5,form.getVehicleEmissionType());
		    
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * @param username
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void delete(String vehicleName, String type) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cities_carbon_footprints", MySQL_user, MySQL_password);
			
			String sql = "delete from vehicle where vehicle_type = ? AND vehicle_emission_type = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,vehicleName);
		    preparestatement.setString(2, type);
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
