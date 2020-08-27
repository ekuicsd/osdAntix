package Auth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class paymentOptionAuth
 */
@WebServlet("/paymentOptionAuth")
public class paymentOptionAuth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public paymentOptionAuth() {
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
		String payment=request.getParameter("group1");
		System.out.println(payment);
		
		if(payment.equals("credit card") || payment.equals("debit card"))
		{
			response.sendRedirect(request.getContextPath()+"/paymentoption?mop="+payment);
		}
		if(payment.equals("cash"))
		{
			response.sendRedirect(request.getContextPath()+"/thankyuPage.html");
		}
	}

}
