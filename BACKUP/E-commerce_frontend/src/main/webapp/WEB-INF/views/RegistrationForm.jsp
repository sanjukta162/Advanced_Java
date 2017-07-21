<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Registration</title>
</head>
<body>
<div align="center">
<form:form action="saveuser" method="post" commandName="user" modelAttribute="user1">
<table border="0">
<tr>
<td colspan="2" align="center"><h2>Registration</h2></td>
</tr>

<tr>
<td>Your Name:<span class="input-group-addon"><i class="fa fa-user fa" ></i></span></td>
<td><form:input path="Name" /></td>
<td><form:errors path="Name" cssStyle="color:#FF0000;" /></td>
</tr>

<tr>
<td> Your E-mail:</td>
<td><form:input path="email" /></td>
 <td><form:errors path="email" cssStyle="color:#FF0000;"/></td> 
</tr>



<tr>
<td>UserName:</td>
<td><form:input path="Username" /></td>
<td><form:errors path="Username" cssStyle="color:#FF0000;" /></td>
</tr>

<tr>
<td>Password:</td>
<td><form:password path="Password" /></td>
<td><form:errors path="Password" cssStyle="color:#FF0000;" /></td>
</tr>



<tr>
<td>Confirm Password:</td>
<td><form:password path="Password" /></td>
<td><form:errors path="Password" cssStyle="color:#FF0000;" /></td>
</tr>

<tr>
<td>Address:</td>
<td><form:input path="Address" /></td>
<td><form:errors path="Address" cssStyle="color:#FF0000;" /></td>
</tr>

<tr>
<td>State:</td>
<td><form:input path="State" /></td>
<td><form:errors path="State" cssStyle="color:#FF0000;" /></td>
</tr>


<%-- <tr>
<td>Profession:</td>
<td><form:select path="profession" items="${list}" /></td>
</tr> --%>
<tr>
<td colspan="2" align="center"><input type="submit" value="Register" /></td>
</tr>
</table>
</form:form>
</div>
</body>
</html>​

























<!--  <style>
.error {
    color: #ff0000;
    font-style: italic;
}
</style>
</head>
<body bgcolor="pink">
 
<form:form action="saveuser" method="post" commandName="user1" modelAttribute="user1">
    <table>
        <tr>
            <td>Enter Ur Name :</td>
            <td><form:input path="Name" /></td>
            <td><form:errors path="Name" cssClass="error" /></td>
        </tr>
       
 
        <tr>
            <td colspan="3"><input type="submit" value="Register"></td>
        </tr>
    </table>
</form:form>-->
 
