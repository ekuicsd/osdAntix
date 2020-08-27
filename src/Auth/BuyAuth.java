package Auth;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.DBHandler;

/**
 * Servlet implementation class BuyAuth
 */
@WebServlet("/BuyAuth")
public class BuyAuth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BuyAuth() {
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
		String cat=request.getParameter("cat");
		cat=cat.toLowerCase(Locale.ENGLISH);
		String city=request.getParameter("city");
		city=city.toLowerCase(Locale.ENGLISH); 
		String gen=request.getParameter("gen");
		String strprice=request.getParameter("price");
		int price=Integer.parseInt(strprice);
		System.out.println(cat);
		System.out.println(city);
		System.out.println(gen);
		System.out.println(price);
		
		session.setAttribute("cat", cat);
		session.setAttribute("city", city);
		session.setAttribute("gen", gen);
		session.setAttribute("price", price);
		System.out.println("set session sucessfully!!");
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
