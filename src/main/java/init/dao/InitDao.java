package init.dao;

import java.io.File;
import java.io.FileNotFoundException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

import org.apache.jasper.tagplugins.jstl.core.Url;

import user.domain.User;



/**
 * DDL functions performed in database
 */
public class InitDao {
	
	/**
	 * user name to connect to the database 
	 */
	private String MySQL_user = "cities_carbon_footprints";  //TODO change user
	
	/**
	 * password of your username to connect to the database
	 */
	private String MySQL_password = "CS480ROCKS";  //TODO change password
	
	/**
	 * InitliazeDB
	 */
	public void intialize() throws ClassNotFoundException, InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/cities_carbon_footprints", MySQL_user, MySQL_password);
			
			URL path  = InitDao.class.getResource("initializeDB.sql");
			File file = new File(path.getFile());
			System.out.println(file.getPath());
			
			Scanner read = new Scanner(file);
			read.useDelimiter(";");
			String sqlCmd;
			
			while(read.hasNext()) {
				sqlCmd = read.next();
				System.out.println(sqlCmd);
				PreparedStatement preparestatement = connect.prepareStatement(sqlCmd); 
			    preparestatement.execute();
			}
			
			read.close();
		    connect.close();
		} catch(SQLException | FileNotFoundException e) {
			throw new RuntimeException(e);
		}
	}		
}
