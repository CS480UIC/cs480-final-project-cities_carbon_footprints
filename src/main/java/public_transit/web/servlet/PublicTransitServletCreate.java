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

public class PublicTransitServletCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PublicTransitServletCreate() {
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
		Map<String,String[]> paramMap = request.getParameterMap();
		PublicTransit form = new PublicTransit();
		List<String> info = new ArrayList<String>();
		
		for(String name : paramMap.keySet()) {
			String[] values = paramMap.get(name);
			info.add(values[0]);
		}
		
		form.setTransitType(info.get(0));
		form.setTransitEmissionType(info.get(1));
		form.setTotalUsage(Float.parseFloat(info.get(2)));
		form.setTransitCity(info.get(3));
		form.setTransitDate(info.get(4));
	
		try {
			service.createPublicTransit(form);
			response.sendRedirect( request.getContextPath() + "/jsps/main.jsp");
		} catch (ClassNotFoundException | PublicTransitException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} 
	}

}
