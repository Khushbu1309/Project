 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Registration Form </title>

</head>
<style>
body
{
	background-color:#F0F0F0;
}
input    {color: blue;font-weight:bold;  font-size:25px;color:black;  }
input[type="text"] {
    width: 300px;
    height:7%;
    padding-right:50px;
    border-radius: 5px;
    	/* background-color:black;  */
     border: 1px solid black; 
    }
input:not([value=""]):not(:focus):invalid
{
}
 
form {
	 	background-image: url('	https://thumbs.dreamstime.com/b/planks-dark-old-wood-texture-background-170515350.jpg');
		  background-repeat: no-repeat; 
		  height:200px; background-size: 1300px 900px;
		  font-size:20px;
		
 		
  background-position: center; 
  		color:white;
	  background-color: #f2f2f2;
	  width: 1200px;
	  height:850px;
	  padding: 15px;
	  border: 1px solid black;
	  margin: 15px;
	  right:500px;
	  left:1000px;
	  text-align:center;
	  border-radius: 8px;
	 
}
div.head{
	height:30px;
	font-size:50px;
	color:black;
	/* border: 1px solid black; */
	text-align:center;
	margin-bottom:00px;
	background-color:yellow; 
	 
}
div.submit{
	text-color:
}
#txtAge {
	border-radius: 5px;
	background-color: #f2f2f2;
	color: black; 
	margin-bottom:10px;
    width: 300px;
    height:7%;
    padding-right:50px;
    border-radius: 5px;
    margin-right:40px; 
	margin-left:150px    
} 
#name
{
	margin-right:40px;  
	margin-left:135px;
	margin-bottom:8px;
	
}
#votersid
{
	margin-right:40px; 
	margin-left:110px;
	margin-bottom:8px;
}
#fathus
{
	margin-right:40px; 
	margin-left:80px;
	margin-top:0px;
	margin-bottom:8px;
}
#aadharnumber
{
	margin-right:40px; 
	margin-left:65px;
	margin-bottom:8px;
}
#pincode
{
	margin-right:40px; 
	margin-left:120px;
	margin-bottom:7px;
}
#address
{
	margin-right:40px; 
	margin-left:120px;
	margin-bottom:7px;
}
#submit{
	background-color:black; 
	width: 200px;
    height:8%;
  	border-radius: 8px;
  	margin-top:5px;
  	margin-left:200px; 
	 
}
body
{
	background-color:light gray;
}
div.head {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 10px;
  width:500px;
} 
div.h.a{
	text-align: right;
}
/* .button {
  background-color: #4CAF50; 
  border: none;
  color: white;
  padding: 30px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 26px;
  margin: 4px 2px;
  cursor: pointer;
}
.button5 {border-radius: 50%;}
#header{
	margin-right:30px;
} */
</style>

<body  bgcolor="white" >
<div  class= "mainheader" id="header">
	<h1 style=" background-image: url('https://cache.careers360.mobi/media/presets/860X430/article_images/2021/1/8/NMAT-2020-Additional-Registration-Window.jpg'); background-repeat: no-repeat;height:200px;width:2000px; background-size: 1800px 550px; background-position:left;font-weight:bold; padding: 30px; /* background-color:hsl(68, 100%, 89%); */ color:white; margin-left:170px; font-style: italic; test-align:center;">ELECTION <a href="FrontPage.html" target="_blank" style="text-align: center; color:white;padding left:3px;">HOME</a></h1>
</div>
<center>
<div class ="head"><b>REGISTRATION FORM</b></div>
</center>
<div class="form">
<center>
	<form method="post"  action="RegisterationInsertionServlet">	
		Name: <span class="required">*</span> <input  type="text"  id="name" name="name"  placeholder="Enter Name"  pattern="^[a-zA-Z\s]+$" title="no special characeters and no numeric digit allowed" required/> <p style="color:red; text-align:right;margin-right:200px; margin-top:0px;"><strong>Note:</strong> (Same as your voter's Id card)</p>    Fat/Hus Name: <span class="required">*</span><input type="text" id="fathus" name="fathersname" placeholder="Father's/Husband Name" pattern="^[a-zA-Z\s]+$" required/><p style="color:red; text-align:right; margin-top:0px;margin-right:200px;"><strong>Note:</strong> (Same as your voter's Id card)</p>     Voter's Id: <span class="required">*</span><input type="text" id="votersid"  name="votersid"  placeholder="Voter's id "  pattern="[0-9]{5}" title="Voters ID must need 5 numbers." required/><br></br>    Aadhar Number: <span class="required">*</span><input type="text" id="aadharnumber" name="aadharnumber"  placeholder="AadharNumber"  maxlength="12" pattern=".{12}"  title="Aadhar number must be include 12 numbers." required/><br></br>
		Age: <span class="required">*</span><input type="number"  min="18" id="txtAge" name="age"  placeholder="Age"  required/><br></br>              
		Address: <span class="required">*</span><input type="text" id="address" name="address" placeholder="Address" required/><p style=" color:red; text-align:right; margin-top:0px;margin-right:200px;"><strong>Note:</strong> (Same as your voter's Id card)</p>     Pincode: <span class="required">*</span> <input type="text" id="pincode" name="pincode" placeholder="Pincode " pattern="[0-9]{2,6}" required/><br></br>
		<input style="text-align:center;left:50px;color:blue;" type="submit" id="submit"  value="Submit"/>
		
	</form>
</center>
</div>
</body>
</html>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            