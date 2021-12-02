package public_transit.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;

import city.domain.City;
import entity1.domain.Entity1;
import public_transit.domain.PublicTransit;
import user.domain.User;
import vehicle.domain.Vehicle;



/**
 * DDL functions performed in database
 */
public class PublicTransitDao {
	
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
	public void createPublicTransit(PublicTransit form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cities_carbon_footprints", MySQL_user, MySQL_password);
			
			String sql = "INSERT INTO public_transit (transit_type, transit_emission_type, total_usage, transit_city, transit_date) VALUES (?,?,?,?,?)";
			
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			
		    preparestatement.setString(1,form.getTransitType());
		    preparestatement.setString(2,form.getTransitEmissionType());
		    preparestatement.setFloat(3,form.getTotalUsage());
		    preparestatement.setString(4,form.getTransitCity());
		    preparestatement.setString(5,form.getTransitDate());
		    
		    preparestatement.execute();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	/**
	 * FindCity
	 */
	public PublicTransit findPublicTransit(String tType, String tEmissionType) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		PublicTransit pt = new PublicTransit();

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cities_carbon_footprints", MySQL_user, MySQL_password);
		
			String sql = "SELECT * FROM public_transit WHERE transit_type=? AND transit_emission_type=?";
			
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			
		    preparestatement.setString(1,tType);
		    preparestatement.setString(2,tEmissionType);
		    
		    ResultSet resultSet = preparestatement.executeQuery();
		    while(resultSet.next()){
		    	String transitType = resultSet.getString("transit_type");
		    	if(transitType.equals(tType)){
		    		pt.setTransitType(transitType);
		    		pt.setTransitEmissionType(resultSet.getString("transit_emission_type"));
		    		pt.setTotalUsage(resultSet.getFloat("total_usage"));
		    		pt.setTransitCity(resultSet.getString("transit_city"));
		    		pt.setTransitDate(resultSet.getString("transit_date"));
		    	}
		    }
		    System.out.println(pt);
		
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
		
		return pt;
	}
	
	/**
	 * @param form
	 * @throws ClassNotFoundException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public void update(PublicTransit form) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cities_carbon_footprints", MySQL_user, MySQL_password);
			
			String sql = "UPDATE public_transit SET total_usage = ?, transit_city = ?, transit_date = ? where transit_type = ? AND transit_emission_type = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
			
		    preparestatement.setFloat(1,form.getTotalUsage());
			preparestatement.setString(2,form.getTransitCity());
		    preparestatement.setString(3,form.getTransitDate());
		    preparestatement.setString(4,form.getTransitType());
		    preparestatement.setString(5,form.getTransitEmissionType());
		    
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
	public void delete(String tType, String tEmissionType) throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cities_carbon_footprints", MySQL_user, MySQL_password);
			
			String sql = "delete from public_transit where transit_type = ? AND transit_emission_type = ?";
			PreparedStatement preparestatement = connect.prepareStatement(sql); 
		    preparestatement.setString(1,tType);
		    preparestatement.setString(2, tEmissionType);
		    preparestatement.executeUpdate();
		    connect.close();
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
