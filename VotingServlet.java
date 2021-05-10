

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VotingServlet
 */
@SuppressWarnings("serial")
@WebServlet("/VotingServlet")
public class VotingServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String parties=request.getParameter("parties");
		PrintWriter out=response.getWriter();
		int countCGRS=0;
		response.setContentType("text/html");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/votingelection","root","12345");
			 String sqlqry1 = "select BJP from parties" ;
		     String sqlqry2="select CGRS from parties ";
		     String sqlqry3="select AAP from parties ";
		    
		    
		     if(parties.equals("BJP"))
				{
		    	 out.println("bjp");
		    	 Statement stmt = con.createStatement();
			      ResultSet rs = stmt.executeQuery(sqlqry1);
			      //Retrieving the result
			      rs.next();
			
			        
		         String qry = "update parties set BJP=BJP+1 where ID=1";
		         stmt.executeUpdate(qry);
		         out.println("done");
				 stmt.close();
				 response.sendRedirect("Voting.jsp");
				}
		     if(parties.equals("Aam AAdmi Party"))
				{
		    	 out.println("AAP:");
		    	 Statement stmt = con.createStatement();
			      ResultSet rs = stmt.executeQuery(sqlqry3);
			      rs.next();
			      rs.getInt(1);
			   
		        String qry = "update parties set AAP=AAP+1 where ID=1";
		        stmt.executeUpdate(qry);
				stmt.close();
				response.sendRedirect("Voting.jsp");
				}
		     if(parties.equals("congress"))
				{
		    	 out.println("CGRS:");
		    	 Statement stmt = con.createStatement();
			      ResultSet rs = stmt.executeQuery(sqlqry2);
			      rs.next();
			      countCGRS = rs.getInt(1);
			      System.out.println("CGRSCOUNT:"+countCGRS);
			      System.out.println("Number of records in the cricketers_data table: "+countCGRS);
			      out.println("bjp: "+countCGRS);
			        
		        String qry = "update parties set CGRS=CGRS+1 where ID=1";
		        stmt.executeUpdate(qry);
		        out.println(countCGRS);
		        out.println("done");
				stmt.close();
				response.sendRedirect("Voting.jsp");
				}
		 }
			           
	     catch (Exception e) {
	 		
				out.println(e);
			}
		}
}
			        
