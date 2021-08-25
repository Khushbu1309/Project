

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
 * Servlet implementation class AdminServlet
 */
@WebServlet("/AdminServlet")
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = -1629090380941498104L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 PrintWriter out=response.getWriter();
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");  
			  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/votingelection","root","12345");
		      System.out.println("Connection established......");
		      String query = "select BJP from parties" ;
		      String query1="select CGRS from parties";
		      String query2="select AAP from parties ";
		      

		      Statement stmt = con.createStatement();
		      ResultSet rs = stmt.executeQuery(query);
		      rs.next();
		      int countBJP = rs.getInt(1);
		      out.println("BJP: "+countBJP);
		     
		      stmt.close();
		      
		      
		      Statement st = con.createStatement();
		      ResultSet rs1 = st.executeQuery(query1);
		      //Retrieving the result
		      rs1.next();
		      int countCGRS = rs1.getInt(1);
		      out.println("CGRS: "+countCGRS);
		      st.close();
		      
		      
		      
		      
		      Statement st2 = con.createStatement();
		      ResultSet rs2 = st2.executeQuery(query2);
		      //Retrieving the result
		      rs2.next();
		      int countAAP = rs2.getInt(1);
		      out.println("AAP: "+countAAP);
		      st2.close();
		     
		      
		      if(countBJP>countCGRS && countBJP>countAAP)
		      {
		    	  out.println("Winner party is BJP");
		      }
		      else if(countCGRS>countBJP && countCGRS>countAAP)
		      {
		    	  out.println("Winner party is CGRS");
		      }
		      else if(countAAP>countBJP && countAAP>countCGRS)
		      {
		    	  out.println(" winner party is AAP");
		      }
		      else if(countAAP==countBJP && countBJP==countCGRS)
		      {
		    	  out.println("All parties have equal votes");
		      }
		      else if(countAAP==countBJP && countBJP>countCGRS &&countAAP>countCGRS)
		      {
		    	  out.println("DRAW BETWEEN AAP AND BJP");
		      }
		      else if(countAAP==countCGRS && countBJP<countCGRS &&countAAP>countBJP)
		      {
		    	  out.println("DRAW BETWEEN AAP AND CGRS");
		      }
		      else if(countCGRS==countBJP && countBJP>countAAP &&countCGRS>countAAP)
		      {
		    	  out.println("DRAW BETWEEN CGRS AND BJP");
		      }
		    
		      con.close();    
		}
			
		catch(Exception e)
		{ 
			System.out.println(e);
		}   
	}
		
}
