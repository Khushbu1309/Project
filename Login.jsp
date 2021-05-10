<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
p: {
 
}
body{
	/* background-color: #ffffff;
  background-image: url("");
  background-repeat: no-repeat;
  background-position: right top;
	
  background-size: 300px 100px; */
}
form {
	/*  background-image: url("");background-color: #cccccc;"
	  height: 500px; /* You must set a specified height data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBw0ODQ0NDQ0PDQ0NDQ0NDQ0NDQ8NDQ0NFREXFhURFRUYHiggGBolGxUVITEhJSkrLi4uFx8zODMsNygtLisBCgoKDg0OFw8PFSsdFR0tKy0tKystKy0tLS0tLS8rKy03Ky0tKy0rLTcrKysrKys3LSsrLSstKzcrKystLS0rLf/AABEIALEBHAMBIgACEQEDEQH/xAAaAAEBAQEBAQEAAAAAAAAAAAAAAgEDBAYF/8QAOBABAQACAAIGCAQEBgMAAAAAAQACEQMhEjFRYXGxBCJBUoGRodETkqLBFGJygiOTssLh8DJCY//EABkBAQEBAQEBAAAAAAAAAAAAAAABAgMGBP/EABoRAQEBAQEBAQAAAAAAAAAAAAABETEhAkH/2gAMAwEAAhEDEQA/APoJLS9S860KggVBZtUCoLQrCza1Ijo2ON11YlNXHFKUuqUJalZsc2mtpbTNTLbKhJKhGNKxBaVi0rAWlYtCwa0MWhygzfKlbN8qFqC0hvfN6+6LQZdfjBTh3v0uGWXPI7Na+V0c287lzz+HlB6TgiHPLqOz7WPo+Pbl8z7WHEdHgWPEbKvHw8nIx37UHXjdngHvZfT7Xl4T6uPied3eK20rn6Vw+jhlkLs11611ndclq9M4i8PI8PMuW5D8fbFQWFRc60orxKSssVqKCsKSssVuGrEqpaCMrlldW55W4zXNoa2hukYrLLbKoRlK1BaVi0rEFpWLQsBaFi0rUYtC2rc1gLQtq0rUTllc8t+x18LeI8viULBL0ve+lHbt3v4VLRkzBLnl7/6Sl4mfv/pLsZcjwLHKYa8weqA9XU0Ln7/6ScN9Ui1zRGZkmnPk/wApbuLTusmD7sqKCobjWnQrLmNQ2K1HUbRuY27s41rpulad2OUw0WhYtK2pGbWNDatjbjNZZGlaoLSsWlaoLSsWhYC0LFoWo1bmsWhYC0rFoWozJoyyi0LBmeXmUrFod1BaMm1Hs8rnk9fdA6Z2nzpeIdp87fw33fKl4OXu/wCmaOWD6pFg71r29Vrws/d+uP3qIWzdvEwyxFTQdbsf3og++tGmXJVjVu57t3TF103bu57m6Yur3N0bs3MNWtK2bsriaWLFpWqMWlYtK1QWlYtCwFoWLStQW5rFoWAtKxaFqC3NYtCwFoWLQtQWwypWjpQdXK8+bzy+Hla8Txua82D1458jwJ0y834x2PysfSDsflZxXLgv/j4nnez8QvBi6Duun452ZfKtR19MzHh5Hh5l5reNxTLFAy269nfZWD7y2yXNWyyQbbZIElkG2LFpWAtKxaVqgtKxaFgLQsWhagtCxaFgLSsWhagtzWLQsBaFi0LUFoWLQsDJoW3JoWoLQsWlYOnRO+x4Z32dKdKDlw+eu9L0/wAPj2vzLzcL/wBfEvWZNmjl6RwTHByF2a69a67jd/Ssv8PL4eZcK/I+8k7gX28pp91+lz1SWLpBNb3qb7oNk+DNwLN20rVBaVi0rAWlYtCwFoWLQtQWhYtCwFoWLStQW5rFoWAtCxaFqC0LFoWAtCxaVqC0LFpWAtixaYG3tm3t+kkGHK3p5+99CSYMyck05cvAtkmD77hPrf2vmXXpF5c8zFF3rSchZ/E49mX5G+e9aVx31uH/AHeVuL1+P7FyeIZZYaHl0t7E9kyy0u9/JfZWcSu2ygfWy+FH4h3/ACbMHavh7NVHRaVi0raQ3YtK0ucDJoWOVC1BaFi0LAWlYtC1BbmsWhYC0LFoWoLQsWhYC0LFpWoLQsWlYC0ratMCSQJJAkkCSQfeGO8tbTkvLXadtf4P82X6ftculrL+18yv8RuFvqo4m8csDamXS3vXsO66cPh9LbtNOuWuw7u+4cbPefD/AL/K7cHPXS/q/wBpS3xVPB/my/T9rz5OsssevWvHnehzbyZZf4mfhj5V+b6izHkO3mHZS4979LMc+R4FjnaRBlypWnB5fPzsW1AWlbFoWDcm5ratzWo1bmsWhYC0LFoWoLQsWhYC0LFpWoLQsWlYC2LFpgSSBJIEkgSSBJIPuOLhk6ccjF5nM3yo6HF9/H8n/N2bFuORdcTh5dLFyyHo70GOus8bcunt6OQDz04756rW5ALlvt/YrkNF4nv4/k/5pxHa5O111GuqpwOy44vr5nsDHlMkNbrL3j8tL0vePy1LQtcTWHI1Sses+NiH/VqJWhZxOWvGlYMVoWLQtQWhYtC1BaFi0LAWhYtK1BaFi0rAWxbFsgSSBJIEkgSSBJIEkg+6Wlacs+etK63y11UuT7mX6fvchS3myyellz9p5F0y4mkERy3reueuvquWfA6apjm6dLjkBvR3+EtXBze258PL18/DD96n0N93ifnPvRhiYuRzMuXSMnbr2TdMx0WhZtTZi6efs+9L0vdfp97WonLLmfGlyaVMjYp3nXQ4/wA2XzIHEy6vGxaXHvXxsXuagtCx32PyoWoLQsWhYC0LFpWoLQsWlYC2LFpgSSBJIEkgSSBJIEkgSSD7Tphmb918yp42PbeX0rPouKimk9XFy58uy4PpOPZn/l5XHYuV39JzHicHX/0/03p9F4gGe/f/ANuN+YcTpcTh6MuXT3vFPZ33b+JxwcjIy5uzWKmuiHs8LN4r9F4uPbfm8XLfG4v9PD8mPp2HZn/l5XDHidLicTIHSYa2J1bnz0x6eHxDo4/04+UeIXiPSAATLYA+q9dj6Tj2ZflbeplOC+qeOXm2rc+C+qeL5tq25xL0WcPLk+P7FC3P8UN7dc99T2Eo75ZF5s31nwLXjY9v0bi5CqdhIKWhYtK2gWhYtKwFsWLTAkkCSQJJAkkCSQJJAkkCSQfZNLbLA55UMkENGUlRDQyQRlc22VHNoZIIaWyVEtDbIIaWSDGySBJIEkgSSBJIEkgSSBJIEkg//9k=*/
  	/* background-position: center; 
  	background-repeat: no-repeat; 
  	background-size: cover; 
  	font-weight:bold; 
  	font-size:18px;
  	/* float:center; */
	  height: 480px;
	  width: 1300px; 
	  /* padding: 20px;
	 border: 1px solid black; 
	  margin: 10px; */
	  	 margin-left:295px;
	  
	 
	  text-align:left;
	  border-radius: 8px
	  
	  
	 
}
a{
	 margin-left:270px;
	 riht:0px;
}	
#login{
	 margin-left:295px;
	 riht:0px;
	 width: 110px;
     height:10%;
     border-radius: 8px;
     text-align:center;
     font-style: bold;
}
input[type="text"] {
    width: 250px;
    height:10%;
    padding-right:50px;
    border-radius: 5px;
    padding: 20px;
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

#box {
 background-image: url("");background-color: #cccccc;"
 /* You must set a specified height data:image/jpeg;base64,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*/
  	/* background-position: center; /* Center the image */
  /* 	background-repeat: no-repeat; /* Do not repeat the image */
/*   	background-size: background-size: 1380px 800px;;
 */ */
/*   position: absolute; */
  right: 660px; */
  
  /* left:400px; 
  width: 550px; */
 /*  border: 5px solid black;  */
 /*  padding: 10px;
 */  display:inline-block;
} 
.header
{

	background-color: blue;
	
	
	margin-top:0px;
	font-size:30px;
	color:white;
	font-weight: 900;
	padding: 20px 50px;
	text-shadow: 5px 5px 5px black;
}

.header a {
  float: left;
  text-align: justify;
  color: #f2f2f2;

  text-decoration: none;
  font-size:30px;
  margin-left:0px;
  margin-right:300px;
  text-shadow: 5px 5px 5px red;
}






</style>
<body >
	<div class="header">
				<p><b><a href="FrontPage.html"style="text-align:left;" >Home</a></b></p>
				<p style="text-align:center; "><b>ELECTION LOGIN FORM</b></p>
	
	</div>

	
			
 



<div id="box">
	<h1 id="h"><b>Login Form </b><i class="glyphicon glyphicon-user"></i></h1>
	<form style="margin-top:0px; align:center;" method="post"  action="LoginServlet" >	
		Voter's Name: <span class="required">*</span> <input  type="text"  id="name" name="votersname"   placeholder="Enter Name"  required /> <p style="color:red; /* text-align:center; */font-weight:bold; margin-top:10px;margin-left:100px;"><strong style="">Note:</strong> (Same as your voter's Id card)</p>
	    Voter's Id: <span class="required">*</span><input type="text" id="votersid"  name="votersid"  placeholder="Voter's id " pattern="[0-9]{5}" title="Voters ID must neend 5 numbers." required/><br></br>   
		<input  style="color:solid-black;font-weight: 900;" class="log" type="submit" id="login"  value="Login"/>
		<a  class="a" style="text-align:right;" href="RegistrationForm.jsp">New User-Register</a>
	</form>
</div>

</body>
</html>






<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>

</head>
<style>
body
{
	background-color:#F0F0F0;
}
input    {color: blue;font-weight:bold; size:"50";   }
input[type="text"] {
    width: 300px;
    height:6%;
    padding-right:50px;
    border-radius: 5px;
    	/* background-color:black;  */
     /* border: 1px solid black; */
    }
input:not([value=""]):not(:focus):invalid
{
}
 
form {
	 		background-image: url('	https://thumbs.dreamstime.com/b/planks-dark-old-wood-texture-background-170515350.jpg');
		  background-repeat: no-repeat; 
		  height:120px; background-size: 1100px 800px;
		/*   
 		
  background-position: center; */
  		color:white;
	  background-color: #f2f2f2;
	  width: 500px;
	  height:550px;
	  /* padding: 10px; */
	  border: 1px solid black;
	  margin: 0px;
	  right:50px;
	  left:1000px;
	  text-align:left;
	  border-radius: 8px
	 
}
div.head{
	height:30px;
	font-size:30px;
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
	color: black; size:"50";
	margin-bottom:10px;
    width: 300px;
    height:6%;
    padding-right:50px;
    border-radius: 5px;
    margin-right:40px; 
	margin-left:150px    
} 

#name
{
	margin-right:40px;  
	margin-left:135px;
	margin-bottom:7px;
	
}
#votersid
{
	margin-right:40px; 
	margin-left:110px;
	margin-bottom:7px;
}
#fathus
{
	margin-right:40px; 
	margin-left:80px;
	margin-top:0px;
	margin-bottom:7px;
}
#aadharnumber
{
	margin-right:40px; 
	margin-left:65px;
	margin-bottom:7px;
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
	width: 150px;
    height:10%;
  	border-radius: 8px;
  	margin-top:10px;
  	margin-left:300px; 
	 
}
body
{
	background-color:gray95;
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
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
.button5 {border-radius: 50%;}
#header{

	margin-right:30px;
}

</style>

<body  bgcolor="white" >
<div  class= "mainheader" id="header">
	<h1 style=" background-image: url('https://cache.careers360.mobi/media/presets/860X430/article_images/2021/1/8/NMAT-2020-Additional-Registration-Window.jpg'); background-repeat: no-repeat;height:120px; background-size: 1100px 200px; background-position:left;font-weight:bold; padding: 30px; /* background-color:hsl(68, 100%, 89%); */ color:white; margin-left:170px; font-style: italic; test-align:center;">ELECTION <a href="FrontPage.html" target="_blank" style="text-align: center; color:white;padding left:3px;font-size:15px;">HOME</a></h1>
</div>
<center>
<div class ="head"><b>REGISTRATION FORM</b></div>
</center>
<div class="form">
<center>
	<form method="post"  action="RegisterationInsertionServlet">	
		Voter's Name: <span class="required">*</span> <input  type="text"  id="name" name="votersname"   placeholder="Enter Name"  required /> <p style="color:red; text-align:right;font-weight:bold; margin-top:0px;"><strong style="">Note:</strong> (Same as your voter's Id card)</p>
	    Voter's Id: <span class="required">*</span><input type="text" id="votersid"  name="votersid"  placeholder="Voter's id " pattern="[0-9]{5}" title="Voters ID must neend 5 numbers." required/><br></br>   
		<input  style="color:solid-black;font-weight: 900;" class="log" type="submit" id="login"  value="Login"/>
		<a  class="a" style="text-align:right;" href="RegistrationForm.jsp">New User-Register</a>
	</form>
</center>
</div>
</body>
</html>




 --%>