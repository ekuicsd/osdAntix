package Auth;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import oracle.jdbc.pool.OracleDataSource;
import service.DBHandler;

/**
 * Servlet implementation class SellFormAuth
 */

@WebServlet("/SellFormAuth")
@MultipartConfig
public class SellFormAuth extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SellFormAuth() {
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
		response.setContentType("text/html;charset=UTF-8");
		DBHandler obj=new DBHandler();
		String phno=request.getParameter("sphn");
		System.out.println(phno);
	  String rqid=request.getParameter("rqid");
	  System.out.println(rqid);
	 
	  String pcat=request.getParameter("pcat");
	  String pnm=request.getParameter("pnm");
	  String pid=request.getParameter("pid");
	  if(pid.isEmpty() || pid.equals("")) {
		  pid="null";
	  }
	  String price=request.getParameter("price");
	  System.out.println(price);
	  String pdesc=request.getParameter("pdesc");
	  int flag=obj.insertProductvalues( phno,rqid, pcat, pnm, pid, price, pdesc ); 
	  
	  try {
	  Part photo1 =  request.getPart("file1");
	  Part photo2=  request.getPart("file2");
	  Part photo3=  request.getPart("file3");
	
		 OracleDataSource ods=new OracleDataSource();
			ods.setURL("jdbc:oracle:thin:@localhost:1521:xe");  
			Connection con=ods.getConnection("osdantix","icsd");
	     con.setAutoCommit(false);
	
	     PreparedStatement ps = con.prepareStatement("insert into pimg values(?,?,?,?)");
	     ps.setString(1, rqid);
	     // size must be converted to int otherwise it results in error
	     ps.setBinaryStream(2, photo1.getInputStream(), (int)  photo1.getSize());
	     ps.setBinaryStream(3, photo2.getInputStream(), (int)  photo2.getSize());
	     ps.setBinaryStream(4, photo3.getInputStream(), (int)  photo3.getSize());
	     ps.executeUpdate();
	     con.commit();
	     con.close();
	     
	 } 
	 catch(Exception ex) {
	     System.out.println(ex.getMessage());
	 }
	  response.sendRedirect(request.getContextPath()+"/sellingForm.jsp?sphn="+phno);  
	}

}
