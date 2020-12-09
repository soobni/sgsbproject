<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Login Page</title>

<Style>

	body {font-family: Arial, Helvetica, sans-serif;}
	img{ display : inline - block; }
	button {
			margin : 10px 0;
			background-color : white;
			font-size : 13px;   
			padding: 3px 10px;		
			cursor: pointer;
			border : 1px;
			border-raius : 3px;
			box-sizing : border-box;
			float : left;
			margin-left : 46%;
	}
	
	.bb{
	margin-left : 0%;
	}

	
	button:hover {opacity: 0.8;}
	
	input[type=text], input[type=password]{
            padding: 10px;
            margin : 5px 0;
            border: 1px solid #ccc;
            border-radius: 7px;
            box-sizing: border-box;
            width : 230px;
    }
    
</Style>
</head>


<body>

	<div style = 'width : 100%; text-align:center; padding-top : 150px;'>
		<img src='../resources/img/Logo.jpg'>
		
		<form method="post" action="loginOK">
	
			<div>
			<input type='text' name='userid' placeholder = 'UserId' />
			</div>
		
			<div> 
			<input type = 'password' name = 'password' placeholder = 'PassWord' /> 
			</div>
		

			<button type = 'submit'> Login </button>
	
		</form>
			
			<form method="get" action="signup">
		
				<button class='bb' button type = 'submit'> Sign up </button>
		
			</form>
	
	
	</div>

</body>
</html>