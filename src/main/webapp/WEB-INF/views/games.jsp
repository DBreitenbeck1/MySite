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

<%@ include file="partials/header.jsp"%>

<%@ include file="partials/innerslider.jsp"%>


<div class="container">

<div class="row">
<div class="col-md-4 offset-4 gamebox">
<div id="gamespage">
<h2>Games</h2>

<p>Here are some simple games I've made to practice my coding skills
</p>
<ul id="gameslist">
<li>
<a href="/bombsquad/">Bomb Squad</a>
<p>Can you disarm the bomb before it's too late?</p>
</li>
</ul>


</div><!-- gamespage -->
</div><!-- col-md-5 -->
</div><!-- row -->



</div>

<%@ include file="partials/footer.jsp"%>

</body>
</html>