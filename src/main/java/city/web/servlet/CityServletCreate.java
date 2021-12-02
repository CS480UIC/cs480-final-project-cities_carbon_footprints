package city.web.servlet;

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

/**
 * Servlet implementation class UserServlet
 */

public class CityServletCreate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CityServletCreate() {
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
		CityService service = new CityService();
		Map<String,String[]> paramMap = request.getParameterMap();
		City form = new City();
		List<String> info = new ArrayList<String>();
		
		for(String name : paramMap.keySet()) {
			String[] values = paramMap.get(name);
			info.add(values[0]);
		}
		
		form.setCityName(info.get(0));
		form.setPopulation(Integer.parseInt(info.get(1)));
		form.setMostUsedTransportation(info.get(2));
		form.setFactoryNumber(Integer.parseInt(info.get(3)));
		form.setCityDate(info.get(4));
		
		try {
			service.createCity(form);
			response.sendRedirect( request.getContextPath() + "/jsps/main.jsp");
		} catch (ClassNotFoundException | CityException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} 
	}

}
