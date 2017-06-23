<%@ page language="java" contentType="text/html"%>

<html>
<head>

<title>Login-EKart</title>
</head>
<body>

	<form action="LoginController" method="post">
		<table align="center" border="1">
			<tr>
				<td>User Name</td>
				<td><input type="text" name="uname" /></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="passwd" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="SUBMIT" /></td>
			</tr>
		</table>
	</form>
</body>
</html>