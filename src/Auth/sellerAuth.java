package Auth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.DBHandler;

/**
 * Servlet implementation class sellerAuth
 */
@WebServlet("/sellerAuth")
public class sellerAuth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sellerAuth() {
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
		boolean valid=obj.validSeller(unm,pwd);
		if(valid==true)
		{
			long phone=obj.getPhoneSeller(unm,pwd);
			//String phno=String.valueOf(phone);
			HttpSession session=request.getSession();
			session.setAttribute("sellerUnm", phone);
			response.sendRedirect(request.getContextPath()+"/sellerProfile.jsp?sphn="+phone);
		}
		else
		{
			response.sendRedirect(request.getContextPath()+"/ErrorPage.html");
		}
	}

}
