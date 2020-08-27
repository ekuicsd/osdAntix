package Auth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DBHandler;

/**
 * Servlet implementation class sellerChangePwd
 */
@WebServlet("/sellerChangePwd")
public class sellerChangePwd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sellerChangePwd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String phone=request.getParameter("no");
		String opwd=request.getParameter("opwd");
		String pwd=request.getParameter("pwd");
		String cpwd=request.getParameter("cpwd");
		DBHandler obj=new DBHandler();
		if(!pwd.equals(cpwd)) {
			response.sendRedirect(request.getContextPath()+"/ErrorPage.html");
		}
		else{
			obj.updateSellerPwd(phone,opwd, pwd);
			response.sendRedirect(request.getContextPath()+"/sellerProfile.jsp?sphn="+phone);
		}
	}

}
