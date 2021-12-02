package public_transit.web.servlet;

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
import public_transit.domain.PublicTransit;
import public_transit.service.PublicTransitException;
import public_transit.service.PublicTransitService;
import user.domain.User;
import user.service.UserException;
import user.service.UserService;
import vehicle.domain.Vehicle;
import vehicle.service.VehicleException;
import vehicle.service.VehicleService;

/**
 * Servlet implementation class UserServlet
 */

public class PublicTransitServletRead extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PublicTransitServletRead() {
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
		PublicTransitService service = new PublicTransitService();
		PublicTransit pt = null;
		
		try {
			pt = service.findPublicTransit(request.getParameter("TransitType"), request.getParameter("TransitEmissionType"));
		} catch (ClassNotFoundException | PublicTransitException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} 
		if(pt.getTransitType()!=null){
			System.out.println(pt);
			request.setAttribute("pt", pt);
			request.getRequestDispatcher("/jsps/public_transit/public_transit_read_output.jsp").forward(request, response);
		}
			else{
			request.setAttribute("msg", "Public transit not found");
			request.getRequestDispatcher("/jsps/public_transit/public_transit_read_output.jsp").forward(request, response);
		}
	}

}
