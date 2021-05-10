
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	div a{
		font-size:17px;
		margin-right:5px;
		padding:10px;
		text-shadow: 3px 3px black;
	}


	
	
	
	.dropdown:hover .dropdown-content {display: block;}
	
	.dropdown:hover .dropbtn {background-color: #3e8e41;}
		
	.mySlides {display:none;width:1357px;height:510px;;}
	
	
	a {
	  color:white 
	  margin-left:5px;
	  margin-bottom:27px; 
	  margin-top:20px;
	  
	 
	} 
	  a:link, a:visited {
	 /*  background-color:#00fff6; */
	  color: white;
	
	  text-decoration: none;
	  display: inline-block;
	} 
	
	
</style>
</head>
<body>

<div class="head" style="text-align:center;font-weight:900;font-size:25px;">ONLINE VOTING SYSTEM</div>
	<div class="header" style="width:1357px; height:60px;background-color: #0040ff;margin-left:0px; ">
			<b><a href="FrontPage.jsp" target="_blank">Home</a></b>
			<b><a href="RegistrationForm.jsp" target="_blank">Registration</a></b>
			<b><a href="Login.jsp" target="_blank">Login</a></b>
			
			<b><a href="Help.html" target="_blank">Help</a></b>
			<b><a href="Admin.html">Admin Login</a></b> 
			
			<b><a href="Admin.html">Admin Login</a></b> 
			
			
			
  </div>
 
		<div class="slides">
		  <img class="mySlides" src="https://image.shutterstock.com/image-vector/man-throws-letter-box-hand-260nw-1786550243.jpg">
		  <img class="mySlides" src="https://media.istockphoto.com/vectors/-vector-id1128557040?k=6&m=1128557040&s=612x612&w=0&h=KmKVCg2LoWPR-GvIo7t9xASXcigDX-GtHelCxv_xMvY=">
		  <img class="mySlides" src="https://media.istockphoto.com/vectors/politics-and-election-flat-design-icon-online-voting-vector-id1131629322?k=6&m=1131629322&s=612x612&w=0&h=I4_H3qxNQ1ZU1I_5nZk84SvGYjCskwRQNqX1J3jwecw=">
		</div>
	
	<script>
		var myIndex = 0;
		carousel();
		
		function carousel() {
		  var i;
		  var x = document.getElementsByClassName("mySlides");
		  for (i = 0; i < x.length; i++) {
		    x[i].style.display = "none";  
		  }
		  myIndex++;
		  if (myIndex > x.length) {myIndex = 1}    
		  x[myIndex-1].style.display = "block";  
		  setTimeout(carousel, 2000);
		}
	</script>

</body>
</html>









