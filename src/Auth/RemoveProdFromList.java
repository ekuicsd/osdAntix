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
 * Servlet implementation class RemoveProdFromList
 */
@WebServlet("/RemoveProdFromList")
public class RemoveProdFromList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RemoveProdFromList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		String rqno=request.getParameter("rqno");
		DBHandler obj=new DBHandler();
		obj.DeletefromProductTbl(rqno);
		obj.DeleteFromImgTbl(rqno);
		String phone=request.getParameter("sphn");
		response.sendRedirect(request.getContextPath()+"/sellerDeleteProduct.jsp?sphn="+phone);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

}
