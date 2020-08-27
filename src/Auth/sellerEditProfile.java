package Auth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DBHandler;

/**
 * Servlet implementation class sellerEditProfile
 */
@WebServlet("/sellerEditProfile")
public class sellerEditProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sellerEditProfile() {
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
		String name, username, city, add;
		long phone;
		name=request.getParameter("name");
		username=request.getParameter("uname");
		city= request.getParameter("city");
		add=request.getParameter("add");
		phone=Long.parseLong(request.getParameter("no"));
		DBHandler obj= new DBHandler();
		obj.updateSellerProfile(name, username, city, add, phone);
		response.sendRedirect(request.getContextPath()+"/sellerProfile.jsp?sphn="+phone);
	}

}
