package xadmin.fpassword.web;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import xadmin.fpassword.bean.FpasswordBean;
import xadmin.fpassword.database.FpasswordDao;

/**
 * Servlet implementation class FpasswordServlet
 */
@WebServlet("/fpassword")
public class FpasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FpasswordServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");  
		
		FpasswordBean fpasswordBean = new FpasswordBean(email, password);
		
		
		FpasswordDao fpasswordDao = new FpasswordDao();
		
		String result = fpasswordDao.insert(fpasswordBean);
		System.out.println(fpasswordBean.getEmail()+" "+fpasswordBean.getPassword());
		response.getWriter().print(result);
		
		if(fpasswordDao.changepass(fpasswordBean)) 
			{
				response.sendRedirect("login.jsp");
			}
		else 
			{
				response.sendRedirect("forget-pass.jsp");
			}
		
		}

}
