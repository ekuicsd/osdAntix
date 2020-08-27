package Auth;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DBHandler;

/**
 * Servlet implementation class sellerSignupAuth
 */
@WebServlet("/sellerSignupAuth")
public class sellerSignupAuth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sellerSignupAuth() {
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
		System.out.println("hello");
		String name =request.getParameter("name");
		String username= request.getParameter("uname");
		String city= request.getParameter("city");
		city=city.toLowerCase(Locale.ENGLISH);
		String add=request.getParameter("add");
		System.out.println(add);
		String password= request.getParameter("pwd");
		long phone= Long.valueOf(request.getParameter("no"));
		long accno= Long.parseLong(request.getParameter("acc"));
		String accname=request.getParameter("accnm");
		String ifsc=request.getParameter("ifsc");
		String bank=request.getParameter("branch");
		DBHandler obj=new DBHandler();
		obj.insertSeller(name,username,city,add, password,phone, accno, accname, ifsc, bank);
		String unm=username;
		String phno=String.valueOf(phone);
		response.sendRedirect(request.getContextPath()+"/sellerProfile.jsp?sphn="+phno);
	}

}
