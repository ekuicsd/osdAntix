package Auth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DBHandler;

/**
 * Servlet implementation class VerifierAuth
 */
@WebServlet("/VerifierAuth")
public class VerifierAuth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VerifierAuth() {
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
		DBHandler obj= new DBHandler();
		String unm=request.getParameter("name");
		String pwd= request.getParameter("pwd");
		System.out.println("heloo");
		boolean valid=obj.validVerifier(unm,pwd);
		if(valid==true)
		{
			
			long phone=obj.getPhoneOfVerifier(unm,pwd);
			System.out.println(phone);
			response.sendRedirect(request.getContextPath()+"/verifierMainProfile.jsp?nm="+phone);
		}
		else
		{
			response.sendRedirect(request.getContextPath()+"/ErrorPage.html");
		}
	}

}
