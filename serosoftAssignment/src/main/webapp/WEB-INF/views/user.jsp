<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Manage User</title>
<style>
#main{
width: 800px;
height: 400px;
margin: 20px auto;
}
#list{
margin-top: 20px;
}
#wapper{
width: 600px;
height: 400px;
margin: 40px auto;
padding-top: 20px;
border-style: solid;
border-width: 2px;
}

.submit {
	background: url(resources/images/save.png);
	height: 24px;
	border: none;
	width: 75px;
	cursor: pointer;
}

.cancelbtn {
	float: left;
	background: url("resources/images/cancel.png") no-repeat scroll 0 0
		transparent;
	height: 24px;
	border: none;
	width: 75px;
	cursor: pointer;
}
.updatebtn {
	background: url(resources/images/update.png);
	height: 24px;
	border: none;
	width: 75px;
	cursor: pointer;
}
.editbtn {
	background: url(resources/images/edit_btn.png);
	height: 24px;
	border: none;
	width: 75px;
	cursor: pointer;
}
th{
background-color: silver;
height: 30px;
}
</style>

<script>
function addPage() {
    
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            document.getElementById("demo").innerHTML = xhttp.responseText;
        }
    };
    xhttp.open("GET", "/serosoft/add-user", true);
    xhttp.send();

}
function edit(id) {
    
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (xhttp.readyState == 4 && xhttp.status == 200) {
            document.getElementById("demo").innerHTML = xhttp.responseText;
        }
    };
    xhttp.open("GET", "/serosoft/edit/"+id, true);
    xhttp.send();

}
</script>
</head>
<body>
<div id="main">
<div><a href="#" onclick="addPage()"><img alt="" src="resources/images/add_new.png"></a> </div>
<div id="list">
	<table>
	<tr>
		<th width="80">S.N.</th>
		<th width="120">First Name</th>
		<th width="120">Last Name</th>
                <th width="120">Sex</th>
                <th width="120">Phone No</th>
                <th width="120">Email</th>
                <th width="120">Address</th>
		<th width="120" colspan="2">Action</th>
	</tr>
	<c:forEach items="${listUsers}" var="users">
		<tr>
			<td>${users.id}</td>
			<td>${users.firstname}</td>
			<td>${users.lastname}</td>
                        <td>${users.sex}</td>
                        <td>${users.emailid}</td>
                        <td>${users.phoneno}</td>
                        <td>${users.address}</td>
			<td><a href="#" onclick="edit(${users.id})"><img alt="" src="resources/images/edit_btn.png"></a></td>
			<td><a href="<c:url value='/remove/${users.id}' />" ><img alt="" src="resources/images/drop.png"></a></td>
		</tr>
	</c:forEach>
	</table>
</div>
<div id="demo">
</div>
</div>
</body>
</html>