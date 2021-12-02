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

public class VehicleServletDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VehicleServletDelete() {
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
		String method = request.getParameter("method");
		VehicleService service = new VehicleService();
		Vehicle vehicle = null;
		
		if(method.equals("search"))
		{
			try {
				vehicle = service.findVehicle(request.getParameter("VehicleType"), request.getParameter("VehicleEmissionType"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			} catch (VehicleException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			if(vehicle.getVehicleType()!=null){
				request.setAttribute("vehicle", vehicle);
				request.getRequestDispatcher("/jsps/vehicle/vehicle_delete_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "Vehicle not found");
				request.getRequestDispatcher("/jsps/vehicle/vehicle_read_output.jsp").forward(request, response);
			}
		}
		
		else if(method.equals("delete")) {
			try {
				service.deleteVehicle(request.getParameter("VehicleType"), request.getParameter("VehicleEmissionType"));
			} catch (ClassNotFoundException | VehicleException e) {
				e.printStackTrace();
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} 
			request.setAttribute("msg", "Vehicle Updated");
			request.getRequestDispatcher("/jsps/vehicle/vehicle_read_output.jsp").forward(request, response);
		}
	}

}
