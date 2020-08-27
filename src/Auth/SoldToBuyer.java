package Auth;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Product;
import service.DBHandler;

/**
 * Servlet implementation class SoldToBuyer
 */
@WebServlet("/SoldToBuyer")
public class SoldToBuyer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SoldToBuyer() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		 HttpSession session=request.getSession();
		 String username=(String)session.getAttribute("user");
		 Date date=new Date();
		 SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");
		 String strdate = formatter.format(date);  
		 LinkedList<Product> lst=(LinkedList<Product>)session.getAttribute("lst");
		 System.out.println(lst);
		 DBHandler obj=new DBHandler();
		 long phone=obj.getPhoneNoById(username);
		 for(Product p: lst)
		 {
			 obj.RemoveAddToCart(username,p.getRqno());
			 obj.UpdateProductBuyer(phone, strdate, p.getRqno());
		 }
		 //session.setAttribute(lst, null);
		 session.removeAttribute("lst");
		 response.sendRedirect(request.getContextPath()+"/ProductCards.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
