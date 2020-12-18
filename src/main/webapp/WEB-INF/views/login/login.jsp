<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel ="stylesheet" href ="/MyStyle.css"/>
</head>
<body>

<div class="container">

<div class="message">
	<c:if test="${message ne null}">
					<div class="alert alert-${messageType}">
						<strong>${message}</strong>
					</div>
				</c:if>
</div>



<form method="post" action="/login">
<div><h2>State Your Name</h2>
<input class="form-control" type="text" name="name" required>
</div>

<div><h2>Recite Your Password</h2>
<input class="form-control" type="password" name="password" required>
</div>
<button type="submit" class="pass-btn">Submit to Inspection</button>

</form>



</div><!-- container -->

</body>
</html>