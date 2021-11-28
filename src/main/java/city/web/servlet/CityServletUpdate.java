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

public class CityServletUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CityServletUpdate() {
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
		CityService service = new CityService();
		City city = null;
		
		if(method.equals("search"))
		{
			try {
				city = service.findCity(request.getParameter("CityName"));
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			} catch (InstantiationException e1) {
				e1.printStackTrace();
			} catch (IllegalAccessException e1) {
				e1.printStackTrace();
			} catch (CityException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			if(city.getCityName()!=null){
				request.setAttribute("city", city);
				request.getRequestDispatcher("/jsps/city/city_update_output.jsp").forward(request, response);

			}
			else{
				request.setAttribute("msg", "City not found");
				request.getRequestDispatcher("/jsps/city/city_read_output.jsp").forward(request, response);
			}
		}
		
		else if(method.equals("update")) {
			Map<String,String[]> paramMap = request.getParameterMap();
			City form = new City();
			List<String> info = new ArrayList<String>();
			for(String name : paramMap.keySet()) {
				String[] values = paramMap.get(name);
				info.add(values[0]);
			}
			
			form.setCityName(request.getParameter("CityName"));
			form.setPopulation(Integer.parseInt(info.get(2)));
			form.setMostUsedTransportation(info.get(3));
			form.setFactoryNumber(Integer.parseInt(info.get(4)));
			form.setCityDate(info.get(5));
			
			try {
				service.updateCity(form);
			} catch (ClassNotFoundException | CityException e) {
				e.printStackTrace();
			} catch (InstantiationException e) {
				e.printStackTrace();
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} 
			request.setAttribute("msg", "City Updated");
			request.getRequestDispatcher("/jsps/city/city_read_output.jsp").forward(request, response);
		}
	}

}
