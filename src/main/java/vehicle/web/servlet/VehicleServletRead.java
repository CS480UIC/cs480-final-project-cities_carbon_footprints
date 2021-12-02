package vehicle.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import city.domain.City;
import city.service.CityException;
import city.service.CityService;
import entity1.domain.Entity1;
import init.service.InitException;
import init.service.InitService;
import user.domain.User;
import user.service.UserException;
import user.service.UserService;
import vehicle.domain.Vehicle;
import vehicle.service.VehicleException;
import vehicle.service.VehicleService;

/**
 * Servlet implementation class UserServlet
 */

public class VehicleServletRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VehicleServletRead() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		VehicleService service = new VehicleService();
		Vehicle vehicle = null;
		
		try {
			vehicle = service.findVehicle(request.getParameter("VehicleType"), request.getParameter("VehicleEmissionType"));
		} catch (ClassNotFoundException | VehicleException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} 
		if(vehicle.getVehicleType()!=null){
			System.out.println(vehicle);
			request.setAttribute("vehicle", vehicle);
			request.getRequestDispatcher("/jsps/vehicle/vehicle_read_output.jsp").forward(request, response);
		}
			else{
			request.setAttribute("msg", "Entity not found");
			request.getRequestDispatcher("/jsps/vehicle/vehicle_read_output.jsp").forward(request, response);
		}
	}

}
