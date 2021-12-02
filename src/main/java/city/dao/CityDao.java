package city.dao;

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



/**
 * DDL functions performed in database
 */
public class CityDao {
	
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
	public void createCity(City form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cities_carbon_footprints", MySQL_user, MySQL_password);
			
			String sql = "INSERT INTO city (city_name, population, most_used_transportation, factory_number, city_date) VALUES (?,?,?,?,?)";
			
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			
		    preparestatement.setString(1,form.getCityName());
		    preparestatement.setInt(2,form.getPopulation());
		    preparestatement.setString(3,form.getMostUsedTransportation());
		    preparestatement.setInt(4,form.getFactoryNumber());
		    preparestatement.setString(5,form.getCityDate());
		    
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * FindCity
	 */
	public City findCity(String cityName) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		City city = new City();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cities_carbon_footprints", MySQL_user, MySQL_password);
		
			String sql = "SELECT * FROM city WHERE city_name=?";
			
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			
		    preparestatement.setString(1,cityName);
		    
		    ResultSet resultSet = preparestatement.executeQuery();
		    while(resultSet.next()){
		    	String name = resultSet.getString("city_name");
		    	if(name.equals(cityName)){
		    		city.setCityName(name);
		    		city.setPopulation(resultSet.getInt("population"));
		    		city.setMostUsedTransportation(resultSet.getString("most_used_transportation"));
		    		city.setFactoryNumber(resultSet.getInt("factory_number"));
		    		city.setCityDate(resultSet.getString("city_date"));
		    	}
		    }
		
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		
		return city;
	}
	
	/**
	 * @param form
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void update(City form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cities_carbon_footprints", MySQL_user, MySQL_password);
			
			String sql = "UPDATE city SET population = ?, most_used_transportation = ?, factory_number = ?, city_date = ? where city_name = ?;";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setInt(1,form.getPopulation());
			preparestatement.setString(2,form.getMostUsedTransportation());
		    preparestatement.setInt(3,form.getFactoryNumber());
		    preparestatement.setString(4,form.getCityDate());
		    preparestatement.setString(5,form.getCityName());
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
	public void delete(String cityName) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cities_carbon_footprints", MySQL_user, MySQL_password);
			
			String sql = "delete from city where city_name = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,cityName);
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
