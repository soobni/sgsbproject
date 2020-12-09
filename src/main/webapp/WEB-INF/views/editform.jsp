<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Edit Page </title>
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
		<div style = 'width : 100%; text-align:center; padding-top : 5%;'>
			
<a href='../prouser/main'> <img src='../../resources/img/logo.png'></a>
			

		
       <form:form commandName="vo" method="POST" action="../editok"> 
      <table>

      		<tr>
			<td><form:hidden path="seq"/></td>
			</tr>

			<tr>
			<td>Name:</td>
			<td><form:input path="username"/></td>
			</tr>
			
			<tr>
			<td>ID:</td>
			<td><form:input path="userid"/></td>
			</tr>
			<tr>
			<td>PW:</td>
			<td><form:input path="password"/></td>
			</tr>
			<tr>
			<td>Email:</td>
			<td><form:input path="email"/></td>
			</tr>
			
			
			<tr>
			<td>Account:</td>
			<td><form:input path="account"/></td>
			</tr>
			
			<tr>
			<td>Genre:</td>
			<td><form:input path="genre"/></td>
			</tr>
			<tr>  
			<td> </td>  
			<td><input type="submit" value="Save" /></td>  
			</tr>  
			
			</table>
			
			
       </form:form>
       </div>