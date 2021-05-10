

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/RegisterationInsertionServlet")
public class RegisterationInsertionServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*int id=Integer.parseInt(request.getParameter("id"));*/
		String name=request.getParameter("name");
		System.out.println("name"+name);
		Long votersid=Long.parseLong(request.getParameter("votersid"));
		System.out.println("votersid"+votersid);
		Long aadharnumber=Long.parseLong(request.getParameter("aadharnumber"));
		System.out.println("aadharnumber"+aadharnumber);

		int age=Integer.parseInt(request.getParameter("age"));
		System.out.println("age"+age);

		String fathersname=request.getParameter("fathersname");
		System.out.println("fat"+fathersname);

		String address=request.getParameter("address");
		System.out.println("address"+address);

		Long pincode=Long.parseLong(request.getParameter("pincode"));
		System.out.println("pincode"+pincode);

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/votingelection","root","12345");
			Statement stmt=con.createStatement();
			String query="Select * from stateelection where aadharnumber='"+aadharnumber+ "' ";
			ResultSet rs=stmt.executeQuery(query);
			if(rs.next()==true)
			{
				response.sendRedirect("registrationform1.html");
			}
			else
			{
				String qry="insert into stateelection values (?,?,?,?,?,?,?)";		
				PreparedStatement ps=con.prepareStatement(qry);
				/*ps.setInt(1, id);*/
				ps.setString(1, name);
				ps.setLong(2, votersid);
				ps.setLong(3, aadharnumber);
				ps.setInt(4, age);
				ps.setString(5, fathersname);
				ps.setString(6, address);
				ps.setLong(7, pincode);
				ps.executeUpdate();
				ps.close();
				con.close();
				response.sendRedirect("registrationform.html");
			}
		} 
		catch (Exception e) {
			out.println(e);
		}
	}
}
