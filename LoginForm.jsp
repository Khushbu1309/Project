<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
</head>
<style>

form {

	  background-image: url("https://t3.ftcdn.net/jpg/03/55/60/70/360_F_355607062_zYMS8jaz4SfoykpWz5oViRVKL32IabTP.jpg");"
	  color:black;
	  height: 520px;
	  background-position: center; 
  	  background-repeat: no-repeat; 
  	  background-size: cover; 
  	  font-weight:bold; 
  	  font-size:18px;
	  height: 490px;
	  width: 1344px; 
	  margin-bottom:50px;
	  text-align:center;
	  border-radius: 8px	 
}
a{
	 margin-left:270px;
	 right:0px;
	 color:black
}
/* #placeholder{

	
  color: red;
  opacity: 1;
} */	
#login{
	 margin-left:295px;
	 riht:0px;
	 width: 110px;
     height:10%;
     
     border: 2px solid black;
     color:black;
    
     border-radius: 8px;
     text-align:center;
   
}

input[type="text"] {


    width: 250px;
    height:8%;
    padding-right:50px;
    border-radius: 5px;
    border: 2px solid black;
    border-style:  solid black;
 	border-color: solid black;
 	color:black;
 	border-radius: 8px;
    padding: 10px;
	margin-left: 10px;
	
	
 }
#name
{
	margin-right:0px;  
	margin-left:50px;
	margin-bottom:7px; 
}
#votersid
{
	margin-right:0px; 
	margin-left:77px;
 	margin-bottom:7px;
 }
 #h{
 	margin-left:10px;
 	margin-top:10px;
 	padding:50px;
 }

 
/* .header
{

	background-color: black;
	margin-top:0px;
	font-size:30px;
	color:white;
	font-weight: 900;
	padding: 20px 50px;
	text-shadow: 5px 5px 5px black;
} */

.header a {
  float: left;
  text-align: justify;
  color: #f2f2f2;

  text-decoration: none;
  font-size:30px;
  margin-left:0px;
  margin-right:300px;
  text-shadow: 5px 5px 5px black;
}


.header
{
	background-image: url("https://cdn.dribbble.com/users/1889528/screenshots/7239609/0aba6579301149.5cbf290c5a8dd.jpg");
 	  background-size: auto;
	background-color: blue;
	background-size: 1380px 250px;
	
	background-repeat: no-repeat;
	background-position:center;
	
	margin-top:0px;
	font-size:30px;
	color:white;
	font-weight: 900;
	padding: 20px 50px;
	text-shadow: 5px 5px 15px  solid black;
}
.header p{
	text-shadow: 5px 5px 15px  solid black;
}



</style>
<body >
	<div class="header">
				<p><b><a href="FrontPage.html"style="text-align:center;" >Home</a></b></p>
				<p style="text-align:center;margin-right:0px;text-shadow: 5px 5px 15px  solid black; "><b>E</b></p>
	
	</div>

	
			
 



<div  class ="formclass" id="box">
		<form style="margin-top:0px; align:center;" method="post"  action="LoginServlet" >
		<h1 id="h"><b>Login Form </b><i class="glyphicon glyphicon-user"></i></h1>
			
		<b>Voter's Name:</b> <span class="required">*</span> <input  type="text"  id="name" name="votersname" placeholder="Enter Name"  required /> <p style="color:red;  text-align:center; margin-top:0px;margin-left:250px;"><strong style="font-size:15px;">Note: (Same as your voter's Id card)</strong></p>
	    <b> Voter's Id:</b> <span class="required">*</span><input type="text" id="votersid"  name="votersid" placeholder="Voter's id " pattern="[0-9]{5}" title="Voters ID must neend 5 numbers." required/><br></br>   
		<input  style="color:black;font-weight: 900;" class="log" type="submit" id="login"  value="Login"/>
		<a  class="newuser" style="margin-left:0px;" href="RegistrationForm.jsp">New User-Register</a>
	</form>
</div>

</body>
</html>






