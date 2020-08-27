package Auth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DBHandler;

/**
 * Servlet implementation class verifierEditProfile
 */
@WebServlet("/verifierEditProfile")
public class verifierEditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public verifierEditProfile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String phone=request.getParameter("nm");
		String name=request.getParameter("name");
		String username=request.getParameter("uname");
		String city=request.getParameter("city");
		String add=request.getParameter("add");
		DBHandler obj=new DBHandler();
		obj.getUpdateVerifier(phone, name, username, city, add);
		System.out.println("verifier update successfully");
		response.sendRedirect(request.getContextPath()+"/verifierMainProfile.jsp?nm="+phone);
	}

}
