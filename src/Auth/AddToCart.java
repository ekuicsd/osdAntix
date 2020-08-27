package Auth;

import java.io.IOException;
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
 * Servlet implementation class AddToCart
 */
@WebServlet("/AddToCart")
public class AddToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("hello in add to cart");
		DBHandler obj=new DBHandler();
		String rqid=request.getParameter("rqno");
		int rqno=Integer.parseInt(rqid);
		HttpSession session=request.getSession();
		String phone=(String)session.getAttribute("user");
		LinkedList<Product> lst= (LinkedList<Product>)session.getAttribute("lst");
		int flag=0;
		if(lst!=null)
		{
			for(Product p: lst)
			{
				if(p.getRqno()==rqno){
					flag=1;
					break;
				}
			}
		}
		
		if(lst==null || flag==0)
		{
			obj.insertIntoAddToCart(rqno, phone);
			lst=obj.getListFromAddToCart(phone);
			session.setAttribute("lst", lst);
		}
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
