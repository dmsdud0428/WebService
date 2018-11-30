package control;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.DBMainDAO;
import connection.MainDAO;
import myinfo.AwardBean;
import myinfo.CareerBean;
import myinfo.LanguageBean;
import myinfo.LicenseBean;

/**
 * Servlet implementation class Main
 */
@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Main() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		MainDAO dao=new DBMainDAO();
		String address = null;
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession(true);
		String id = (String)session.getAttribute("id");
		if(id == null) id = "null";
		String action = request.getParameter("action");
		
		if(action==null||action.equals("list")) {
			System.out.println("list");
			ArrayList<Integer> list=dao.count(id);
			request.setAttribute("count", list);
			address="/main.jsp";
		}
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);	
	}

}
