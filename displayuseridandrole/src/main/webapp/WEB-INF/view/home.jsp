<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
	<title>luv2code Company Home Page</title>
</head>

<body>
	<h2>luv2code Company Home Page</h2>
	<hr>
	
	Welcome to the luv2code company home page!
<hr>
<br>
<br>
<p>User : <sec:authentication property="principal.username"/></p>

<br><br>
<p>Role(s) <sec:authentication property="principal.authorities"/></p>
<hr>
<form:form action="${pageContext.request.contextPath}/logout" method="POST">
<input type="submit" value="Logout"/>
</form:form>

</body>

</html>