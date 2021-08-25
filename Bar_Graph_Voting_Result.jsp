<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%
int BJPpercentage=0,CGRSpercentage=0,AAPpercentage=0;
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "votingelection";
String userid = "root";
String password = "12345";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>




<%
try{
	ArrayList<Integer> arr=new ArrayList<>();
	connection = DriverManager.getConnection(connectionUrl+database, userid, password);	
	
	int TotalVotes=0;
	statement=connection.createStatement();
	String sql ="select MaximumLimit from maxlimit";
	resultSet = statement.executeQuery(sql);
	while(resultSet.next()){
		TotalVotes=resultSet.getInt("MaximumLimit");
	}

	%>
<%-- 	<%="MaxLimit="+TotalVotes/* resultSet.getString("BJP") */ %> --%>
	
	
	<% 
	int countBJP=0;
	Statement st0=connection.createStatement();
	String sqlquery = "select BJP from parties";
	ResultSet rs0 = st0.executeQuery(sqlquery);
	/* out.println("BJP"); */
	while(rs0.next()){
		countBJP=rs0.getInt(1);
	}
	arr.add(countBJP);
	BJPpercentage=countBJP*100/TotalVotes;
	
	%>
	<%-- <h1 style=" color:blue; font-size:35px;font-weight:600px;text-align:center;">
		<%="BJP  PERCENTAGE   "+"   "+"    "+BJPpercentage+"%" %>
	</h1> --%>
	<%-- <%="countBJP="+countBJP/* resultSet.getString("BJP") */ %> --%>



	<%
	int countCGRS=0;
	Statement st=connection.createStatement();
	String sql1 = "select CGRS from parties";
	ResultSet rs1 = st.executeQuery(sql1);
	while(rs1.next()){
		countCGRS = rs1.getInt(1);
	}
	System.out.print("COUNT:"+countCGRS);
	arr.add(countCGRS);
	CGRSpercentage=countCGRS*100/TotalVotes;
	System.out.println(CGRSpercentage);
	%>
<%-- 	<h1 style=" color:blue; font-size:35px;font-weight:600px;text-align:center;">--%>
		 <%="CGRS PERCENTAGE   "+"   "+ " " +CGRSpercentage+"%" %> 
	<%-- </h1> --%> 

	
	
	
	<%
	int countAAP=0;
	Statement st1=connection.createStatement();
	String sql2 = "select AAP from parties";
	ResultSet rs2 = st1.executeQuery(sql2);
	while(rs2.next()){
		countAAP = rs2.getInt("AAP");
	}
	arr.add(countBJP);
	AAPpercentage=countAAP*100/TotalVotes;
	%>
	<%-- <h1 style=" color:blue; font-size:35px;font-weight:600px;text-align:center; ">
		 <%="AAP PERCENTAGE    "+ "  "+AAPpercentage+"%" %> 
	</h1> --%>
<%-- 	<%="countAAP:"+countAAP %> --%>
	
	
	
	<%
	connection.close();
	
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>	
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	body{
	background-color: black;
		/*  background-color: hsla(89, 43%, 51%, 0.3); */
		/* background-color: #92a8d1; */
	  width: 1300px;
	  height:600px;
	  padding: 10px;
	/*   border: 1px solid black; */
	  margin: 10px;
	  right:50px;
	  left:1000px;
	  text-align:left;
	  border-radius: 8px
	  color:blue;
	  }
	  * {box-sizing: border-box}

	.container {
	  width: 100%;
	  background-color: #ddd;
	}
	
	.skills {
	  text-align: center;
	  padding-top: 20px;
	  padding-bottom: 20px;
	  color: white;
	}
	
	.BJP {width:<%=BJPpercentage+"%" %>; background-color: #4CAF50;}
	.CGRS {width:<%=CGRSpercentage+"%" %>; background-color: #2196F3;}
	.AAP {width:<%=AAPpercentage+"%" %>; background-color: #f44336;}
	
	<%-- .AAP {width:<%=AAPpercentage+"%" %>; background-color: ;} --%>
	

</style>	

</head>
<body>

<h1 style="text-align:center;color:white;font-size:70px;font-weight:600px;">Percentage Of Votes Till Now</h1>
<table border="1">
	<p style="color:white;height:15px;">Bharatiya Janata Party</p>
	<div class="container">
	  <div class="skills BJP"><%="BJP  PERCENTAGE   "+"   "+"    "+BJPpercentage+"%" %></div>
	</div>
	<p style="color:white;height:15px;">Bharatiya Janata Party</p>
	<div class="container">
	  <div class="skills AAP"><%="AAP PERCENTAGE   "+"   "+"    "+AAPpercentage+"%" %></div>
	</div>
	
	<p style="color:white;height:15px;">CONGRESS</p>
	<div class="container">
	  <div class="skills CGRS"><%="CGRS PERCENTAGE   "+"   "+ " " +CGRSpercentage+"%" %></div>
	</div>
	
<%-- 	<p style="color:white;">Aam Aadmi Party</p>
	<div class="container">
	  <div class="skills AAP"><%="CGRS PERCENTAGE "+AAPpercentage+"%" %></div>
	</div> --%>
	
	

</table>
</body>
</html>



































