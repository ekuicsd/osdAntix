package Auth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DBHandler;

/**
 * Servlet implementation class editSellerPayment
 */
@WebServlet("/editSellerPayment")
public class editSellerPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editSellerPayment() {
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
		String phone=request.getParameter("no");
		long phno=Long.parseLong(phone);
		String accno=request.getParameter("accno");
		String accnm=request.getParameter("aacnm");
		String ifsc=request.getParameter("ifsc");
		String bank=request.getParameter("bank");
		long accountno=Long.parseLong(accno);
		DBHandler obj=new DBHandler();
		obj.updateSellerPaymentByPhone(phno, accountno, accnm, ifsc, bank);
		response.sendRedirect(request.getContextPath()+"/sellerProfile.jsp?sphn="+phone);
	}

}
