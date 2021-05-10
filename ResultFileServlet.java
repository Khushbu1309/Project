

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ResultFileServlet
 */
@WebServlet("/ResultFileServlet")
public class ResultFileServlet extends HttpServlet {
	

	/**
	 * 
	 */
	private static final long serialVersionUID = 2371669146624881347L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		@SuppressWarnings("unused")
		PrintWriter out=response.getWriter();
		try {
			 Class.forName("com.mysql.cj.jdbc.Driver");  
			 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/votingelection","root","12345");
		
			 String sqlqry="select * from parties";
			
	    	 Statement stmt = con.createStatement();
		     ResultSet rs = stmt.executeQuery(sqlqry);
		     rs.next();
	         String qry = "update parties set BJP=0,CGRS=0,AAP=0 where ID=1";
	         stmt.executeUpdate(qry);
	        
			 stmt.close();
			 
			 response.sendRedirect("ResultFile1.html");

			
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

}
