package init.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import init.service.InitException;
import init.service.InitService;
import user.service.UserService;

/**
 * Servlet implementation class findAll
 */

public class findChicagoVehicles extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		InitService initService = new InitService();
		try {
			request.setAttribute("VehicleList", initService.findChicagoVehicles());
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | InitException e) {
			e.printStackTrace();
		}
		try {
			List<Object> li = initService.findAllCitiesIn2021();
			for(int i = 0; i < li.size();i++){
				System.out.println(li.get(i).toString());
			}
			
		} catch (InstantiationException | IllegalAccessException
				| ClassNotFoundException | InitException e) {
			e.printStackTrace();
		}
		
		
		request.getRequestDispatcher("/jsps/user/q1_list_chicago_only_vehicles.jsp").forward(request, response);
	}

}
