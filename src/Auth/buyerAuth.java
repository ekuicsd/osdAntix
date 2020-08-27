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
 * Servlet implementation class buyerAuth
 */
@WebServlet("/buyerAuth")
public class buyerAuth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public buyerAuth() {
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
		String rqid=request.getParameter("rqno");
		String unm=request.getParameter("name");
		String pwd= request.getParameter("pwd");
		System.out.println("heloo");
		 HttpSession session = request.getSession();
		session.setAttribute("user",unm);
		boolean valid=obj.validBuyer(unm,pwd);
		if(valid==true)
		{
			response.sendRedirect(request.getContextPath()+"/ProductCards.jsp");
			session.setAttribute("lst", null);
		}
		else
		{
			response.sendRedirect(request.getContextPath()+"/ErrorPage.html");
		}
	}

}
