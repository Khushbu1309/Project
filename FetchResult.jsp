<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%

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
<!DOCTYPE html>
<html>
<body>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
    	    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    	<script type="text/javascript">
    	$.fn.infiniteScrollUp=function(){
    		var self=this,kids=self.children()
    		kids.slice(20).hide()
    		setInterval(function(){
    			kids.filter(':hidden').eq(0).fadeIn()
    			kids.eq(0).fadeOut(function(){
    				$(this).appendTo(self)
    				kids=self.children()
    			})
    		},1000)
    		return this
    	}
    	$(function(){
    		$('tbody').infiniteScrollUp()
    	})
    	</script>
<style>
	body{
	background: url( 'https://i.ytimg.com/vi/-ESweY0bvf8/maxresdefault.jpg');
  	background-repeat: no-repeat;
  	 background-size: 1400px 650px;
	/* */
	
	}
	table.center{
	   overflow-y:scroll;
	   height:300px;
	   display:block;
	   width:200px;
	    border-collapse: collapse;
  		   /* margin-right:auto;
  		   margin-left:auto; */
	}
	table.center th:nth-child(even){background-color: black;}

table.center td {background-color: #ddd;}
	
	td, th {
	padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
	  border: 2px solid #060606;
	  text-align: left;
	  padding: 16px;


</style>
<title>infiniteScrollUp</title>


</head>

<h1 style="color:black;text-align:center;"><b>LIST OF VOTERS YOU CAN SEE YOUR NAME IN VOTERS LIST</b></h1>

<table class="center" >
<tr>
<td>Voters Name  </td>
<td>Voters Id</td>


</tr>


<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from voterslist";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td align="left"><%=resultSet.getString("VotersName") %></td> 
<td align="right"><%=resultSet.getString("VotersId") %></td> <%-- 
<TR><TH><%=resultSet.getString(2)%></TH><TD><input type="text"></TD></TR>  --%>

</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
