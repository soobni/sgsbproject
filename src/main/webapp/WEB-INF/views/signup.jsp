<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Login Page</title>

<Style>

	body {font-family: Arial, Helvetica, sans-serif;}
	img{ display : inline - block; width : 300px;  }

	input[type=text], input[type=password], input[type=email]{
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 7px;
            box-sizing: border-box;
            width : 230px;
    }
    
    table { margin-left : 38%;}
 
 	input[type=submit] {
			margin : 10px 0;
			background-color : white;
			font-size : 15px;   
			padding: 3px 10px;		
			cursor: pointer;
			border : 1px;
			border-raius : 3px;
			box-sizing : border-box;
			float : left;
			margin-left : 75%;
	}
     
</Style>
</head>


<body>

	<div style = 'width : 100%; text-align:center; padding-top : 5%;'>
			
			<img src='../resources/img/Logo.jpg'>
			


			<form action="addok" method="post">

				<table>
				<tr><td>ID</td><td><input type="text" name="userid"/></td></tr>
				<tr><td>PW</td><td><input type="password" name="password"/></td></tr>
				<tr><td>Name</td><td><input type="text" name="username"/></td></tr>
				<tr><td>Email</td><td><input type="email" name="email"/></td></tr>
				<tr><td>Genre</td><td><input type="text" name="genre"/></td></tr>
				<tr><td>Account</td><td><input type="text" name="account"/></td></tr>
				<tr><td><a href="../login/login">go back</a></td><td align="right">
				<input type="submit" value="Submit"/></td></tr>
				</table>

			
			</form>

	</div>

</body>
</html>