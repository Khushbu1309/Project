

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


@WebServlet("/AdminResult")
public class AdminResult extends HttpServlet {
  
	/**
	 * 
	 */
	private static final long serialVersionUID = 6068503967773531731L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		    request.getParameter("partyname1");
		
			request.getParameter("partyname2");
			
			request.getParameter("partyname3");
		 PrintWriter out=response.getWriter();
//	     response.setContentType("text/html");
		try {
			  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/votingelection","root","12345");
		      System.out.println("Connection established......");
		      String query = "select count(*) from votingparties where PartyName='"+"partyname1"+"'";
		      String query1="select count(*) from votingparties where PartyName='"+"partyname2"+ "' ";
		      String query2="select count(*) from votingparties where PartyName='"+"partyname3"+ "' ";
		      

		      Statement stmt = con.createStatement();
		      ResultSet rs = stmt.executeQuery(query);
		      //Retrieving the result
		      rs.next();
		      int count = rs.getInt(1);
		      stmt.close();
		      Statement st = con.createStatement();
		      ResultSet rs1 = st.executeQuery(query1);
		      //Retrieving the result
		      rs1.next();
		      int count1 = rs1.getInt(1);
		      st.close();
		      Statement st2 = con.createStatement();
		      ResultSet rs2 = st2.executeQuery(query2);
		      rs2.next();
		      int count2 = rs2.getInt(1);
		      st2.close();
		     
		      
		      if(count>count1 && count>count2)
		      {
		    	  out.print("BJP");
		      }
		      else if(count1>count && count1>count2)
		      {
		    	  out.print("AAp");
		      }
		      else
		      {
		    	  out.print("CGRS");
		      }  
		     con.close();  
		}	
		catch(Exception e)
		{ 
			System.out.println(e);
		}   
	}

}
