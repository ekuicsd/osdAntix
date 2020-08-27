package Auth;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.DBHandler;

/**
 * Servlet implementation class verifiedFormAuth
 */
@WebServlet("/verifiedFormAuth")
public class verifiedFormAuth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public verifiedFormAuth() {
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
		String phone=request.getParameter("nm");
		System.out.println("name can be catch");
		System.out.println(phone);
		int id=Integer.parseInt(request.getParameter("rid"));
		String strcnm=request.getParameter("pnm");
		String strpid=request.getParameter("pid");
		System.out.println(strpid);
		if(strpid==null || strpid.equals("") || strpid.isEmpty() ) {
			strpid="null";
		}
		System.out.println(strpid);
		String strgen=request.getParameter("group1");
		DBHandler obj= new DBHandler();
		obj.UpdateGenuine(id, strcnm, phone, strpid,strgen);
		response.sendRedirect(request.getContextPath()+"/VerifierProfile.jsp?nm="+phone);
	}

}
