package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import connection.DBgraduateDAO;
import connection.GraduateDAO;
import myinfo.GraduateBean;
import myinfo.UserBean;
import myinfo.ScoreInfo;
/**
 * Servlet implementation class Graduate
 */
@WebServlet("/Graduate")
public class Graduate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Graduate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GraduateDAO dao = new DBgraduateDAO();
		request.setCharacterEncoding("utf-8");
		String address = "/graduate.jsp";
		
		ArrayList<GraduateBean> list = dao.get2016Graduate();
		request.setAttribute("graduate2016", list);
		ArrayList<GraduateBean> list2 = dao.get2017Graduate();
		request.setAttribute("graduate2017", list2);
		ArrayList<GraduateBean> list3 = dao.get2018Graduate();
		request.setAttribute("graduate2018", list3);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(address);
		dispatcher.forward(request, response);
	}

}
