<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<style>
button {
			background-color : white;
			font-size : 13px;   
			cursor: pointer;
			border : 1px;
			border-raius : 3px;
			box-sizing : border-box;
			
	}
		button:hover {opacity: 0.8;}
	
	
 body,list,table{
        font-family: 'Do Hyeon', sans-serif;
        font-size: large;
        font-weight: 100;
    }
#list {
 	font-family: 'Do Hyeon', sans-serif;
   border-collapse: collapse;
  width: 100%;
}


#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}


#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #000000;
  color: white;
}

</style>
<div style=' text-align:center; '>
<a href='../prouser/main'> <img src='../resources/img/logo.png' height="70" style=' text-align:center'></a>
</div>

<div style = 'float=left;'>
<button type="button" onclick="location.href='../login/addmember' ">Add New Member</button>
</div>


<table id="list" width="90%">
<tr>
	
	<th>Order</th>
	
	<th>Name</th>
	<th>ID</th>
	<th>PW</th>
	<th>Email</th>	
	
	<th>Account</th>
	<th>Genre</th>
	<th>Regdate</th>
	<th>Edit</th>
	<th>Delete</th>

</tr>

<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.seq}</td>
		
		<td>${u.username}</td>
		<td>${u.userid }</td>
		<td>${u.password }</td>
		<td>${u.email }</td>
		<td>${u.account}</td>
		<td>${u.genre}</td>
		<td>${u.regdate }</td>
		
		
		<td><a href="editform/${u.seq}">Edit</a></td>
		<td><a href="deleteok/${u.seq}">Delete</a></td>
	
	</tr>
</c:forEach>
</table>


<div style='text-align:center'>
  <p>Cinema</p>
</div>
