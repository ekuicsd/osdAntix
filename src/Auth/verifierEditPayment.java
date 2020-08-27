package Auth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DBHandler;

/**
 * Servlet implementation class verifierEditPayment
 */
@WebServlet("/verifierEditPayment")
public class verifierEditPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public verifierEditPayment() {
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
		String phone= request.getParameter("nm");
		System.out.println(phone);
		String accnum=request.getParameter("accno");
		long accno=Long.parseLong(accnum);
		String accnm=request.getParameter("accnm");
		String ifsc=request.getParameter("ifsc");
		String bank=request.getParameter("bank");
		DBHandler obj=new DBHandler();
		obj.getUpdateVerifierPayment(phone, accno, accnm, ifsc, bank);
		response.sendRedirect(request.getContextPath()+"/verifierMainProfile.jsp?nm="+phone);
	}

}
