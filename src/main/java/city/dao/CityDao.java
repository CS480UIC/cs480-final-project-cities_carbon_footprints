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
	 * get the Search result with Username 
	 */
//	public User findByUsername(String username) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
//		User user = new User();
//		try {
//			
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cities_carbon_footprints", MySQL_user, MySQL_password);
//		    String sql = "select * from user where username=?";
//		    PreparedStatement preparestatement = connect.prepareStatement(sql); 
//		    preparestatement.setString(1,username);
//		    ResultSet resultSet = preparestatement.executeQuery();
//		    while(resultSet.next()){
//		    	String user_name = resultSet.getString("username");
//		    	if(user_name.equals(username)){
//		    		user.setUsername(resultSet.getString("username"));
//		    		user.setPassword(resultSet.getString("password"));
//		    		user.setEmail(resultSet.getString("email"));
//		    		
//		    	}
//		    }
//		
//		    connect.close();
//		} catch(SQLException e) {
//			throw new RuntimeException(e);
//		}
//		return user;
//	}
	
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
	 * insert User
	 */
//	public void add(User user) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
//		try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cities_carbon_footprints", MySQL_user, MySQL_password);
//			
//			String sql = "insert into user values(?,?,?)";
//			PreparedStatement preparestatement = connect.prepareStatement(sql); 
//		    preparestatement.setString(1,user.getUsername());
//		    preparestatement.setString(2,user.getPassword());
//		    preparestatement.setString(3,user.getEmail());
//		    preparestatement.executeUpdate();
//		    connect.close();
//		} catch(SQLException e) {
//			throw new RuntimeException(e);
//		}
//	}
//	
//	
//	public List<Object> findall() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
//		List<Object> list = new ArrayList<>();
//		try {
//			Class.forName("com.mysql.cj.jdbc.Driver");
//			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cities_carbon_footprints", MySQL_user, MySQL_password);
//			String sql = "select * from user";
//			PreparedStatement preparestatement = connect.prepareStatement(sql); 
//			ResultSet resultSet = preparestatement.executeQuery();			
//			while(resultSet.next()){
//				User user = new User();
//				user.setUsername(resultSet.getString("username"));
//	    		user.setPassword(resultSet.getString("password"));
//	    		user.setEmail(resultSet.getString("email"));
//	    		list.add(user);
//			 }
//			connect.close();
//		} catch(SQLException e) {
//			throw new RuntimeException(e);
//		}
//		return list;
//		
//	}
		
}
