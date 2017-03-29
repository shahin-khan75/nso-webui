<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
 <head>
 <style>
    .error 
    {
        color: #ff0000;
        font-weight: bold;
    }
    </style>
 </head>
<body class="login">
<form:form action="login" method="post" commandName="loginBean">
<div class="wrapper">
		<div class="right-form">
			<div class="logo"><a href="#"><img src="<c:url value="/resources/img/cisco-logo.png" />"/></a></div>
		
			<h2>NSO member login</h2>
				<c:if test="${not empty error}">
			<div class="error">${error}</div>
		</c:if>
		<c:if test="${not empty msg}">
			<div class="msg">${msg}</div>
		</c:if>
			<br><spring:message code="msg.error" text="" />
			<input type="text" name="username" class="user">
			<input type="password" name="password" class="user">
			<a href="#">forgot password?</a>
			<input type="submit" value="Login" class="login-btn">
			
		</div>

	</div>
	</form:form>

</body>

</html>