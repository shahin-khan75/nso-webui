<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>NSO</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

 <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">



</head>
<body class="login">
<form action="NSOController" method="post">
<div class="wrapper">
		<div class="right-form">
			<div class="logo"><a href="#"><img src="../img/cisco-logo.png" alt="" /></a></div>
			
			<h2>NSO member login</h2>
			<input type="text" name="username" class="user">
			<input type="password" name="password" class="user">
			<a href="#">forgot password?</a>
			<input type="submit" value="Login" class="login-btn">
			
		</div>

	</div>
	</form>

</body>

</html>