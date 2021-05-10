

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
 * Servlet implementation class AdminFormServlet
 */
@WebServlet("/AdminFormServlet")
public class AdminFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("Username");
		System.out.println("name"+username);
		String password=request.getParameter("Password");
		System.out.println("pass"+password);

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/votingelection","root","12345");
			Statement stmt=con.createStatement();
			String query="Select * from admintable where  Password='"+password+ "'  and AdminName='"+username+"' ";
			ResultSet rs1=stmt.executeQuery(query);
			boolean rs=rs1.next()==true;
			if(rs==true)
			{
				response.sendRedirect("Admin1.html");	
			}
			else
			{
				response.sendRedirect("AdminFormError.html");
			}
		} 
		catch (Exception e) {
			out.println(e);
		}
	}
}
