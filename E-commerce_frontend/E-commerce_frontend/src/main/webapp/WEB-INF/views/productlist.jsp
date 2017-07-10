<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<b> LIST OF PRODUCTS</b>
<div class="container">
<table class="table table-striped">
<thead>
<tbody>
<c:forEach items ="${products}" var="p" >
<tr><td>${p.productName }</td><td>${p.description}</td></tr>
</c:forEach>
</tbody>
</table>
</div>
</body>
</html>