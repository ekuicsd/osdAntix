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
 * Servlet implementation class verifierSignupAuth
 */
@WebServlet("/verifierSignupAuth")
public class verifierSignupAuth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public verifierSignupAuth() {
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
		
		int intid=Integer.parseInt(request.getParameter("vrid"));
		String strname =request.getParameter("name");
		long longphone= Long.valueOf(request.getParameter("no"));
		String strcat=request.getParameter("cat");
		String strcity= request.getParameter("city");
		strcity=strcity.toLowerCase(Locale.ENGLISH);
		String stradd=request.getParameter("add");
		long longaccno=Long.parseLong(request.getParameter("accno"));
		String straccnm=request.getParameter("accnm");
		String strifsc=request.getParameter("ifsc");
		String strbanknm=request.getParameter("banknm");
		String username= request.getParameter("uname");
		String password= request.getParameter("pwd");
		
		DBHandler obj=new DBHandler();
		obj.insertVerifier(intid, strname, longphone, strcat, strcity, stradd, straccnm, longaccno, strifsc, strbanknm,username,password);
		String phno=String.valueOf(longphone);
		response.sendRedirect(request.getContextPath()+"/VerifierProfile.jsp?phno="+phno);
	}

}
