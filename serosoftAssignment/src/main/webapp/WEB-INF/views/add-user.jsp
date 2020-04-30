<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="wapper">
	<form:form action="save_user" modelAttribute="user">
	<center>
		<table>
		<tr><td>
				<c:if test="${!empty user.firstname}">
						<form:hidden path="id" />
				</c:if>
		</td></tr>
			<tr>
				<td>First Name</td>
				<td><form:input path="firstname" />
				</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td>Last Name</td>
				<td><form:input path="lastname" />
				</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td>Sex</td>
				<td><form:radiobutton path="sex" value="M"/>Male &nbsp;&nbsp;
					<form:radiobutton path="sex" value="F"/>Female
				</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td>Email Id</td>
				<td><form:input path="emailid" />
				</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td>Phone No</td>
				<td><form:input path="phoneno" />
				</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td>Address</td>
				<td><form:textarea path="address" rows="2" cols="25" />
				</td>
			</tr>
			<tr><td>&nbsp;</td></tr>
			<tr>
				<td>
					<c:if test="${!empty user.firstname}">
						<input class="updatebtn" type="submit" value="" />
					</c:if>
					<c:if test="${empty user.firstname}">
						<input class="submit" type="submit" value="" />
					</c:if>
				</td>
				<td>
					<a href="get_emp_list" class="cancelbtn"></a>
				</td>
			</tr>
		</table>
		</center>
	</form:form>
</div>
</body>
</html>