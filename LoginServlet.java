

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
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 9211568140687018262L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String votersname=request.getParameter("votersname");
		System.out.println("votersname"+votersname);
		Long votersid=Long.parseLong(request.getParameter("votersid"));
		System.out.println("votersid"+votersid);

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/votingelection","root","12345");
			Statement stmt=con.createStatement();
			String query="Select * from stateelection where  VoterName='"+votersname+ "'  and VoterId='"+votersid+"' ";
			ResultSet rs=stmt.executeQuery(query);

			String qry="Select * from voterslist where  VotersName='"+votersname+ "'  and VotersId='"+votersid+"' ";
			Statement stmt1 = con.createStatement();
		    ResultSet rs1 = stmt1.executeQuery(qry);
		    
			if(rs.next()==false)
			{
				response.sendRedirect("voting_Result.html");
				
			}
		    else if(rs1.next()==true)
			{
				response.sendRedirect("login_Result.html");
				
			}
			else {
				
		           
				String sqlqry="insert into voterslist values (?,?)";		
				PreparedStatement ps=con.prepareStatement(sqlqry);
				/*ps.setInt(1, id);*/
				ps.setString(1, votersname);
				ps.setLong(2, votersid);
				ps.executeUpdate();
				ps.close();
				con.close();
				response.sendRedirect("vote_For_Party.html");
				
		  }
		} 
		catch (Exception e) {
			out.println(e);
		}
	}

}
