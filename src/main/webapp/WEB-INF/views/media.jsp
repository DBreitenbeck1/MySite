<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Noble Cobra Media</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel ="stylesheet" href ="/MyStyle.css"/>
</head>
<body class="main">
<%@ include file="partials/header.jsp"%>
<%@ include file="partials/innerslider.jsp"%>

<div class="container">
 
<h2 class="pageheader">Video and Multimedia Work</h2>



<div class="row">
<div class="col-md-12 box">
<p></p>
</div>
</div>


<div class="row">


<ul id="medialist">
<c:forEach items = "${media }" var ="media" varStatus="step">
<c:choose>
<c:when test= "${step.index %2 != 0 }">
<li class="row2">
</c:when>
<c:otherwise>
<li class= "row1">
</c:otherwise>
</c:choose>
<h4>${media.title }</h4>
<!--  <iframe width="90%" height=""
src="">
</iframe>  -->
<video width="90%" height ="315" controls>
	<source src="${media.source }">
	Your browser does not support the video tag.
</video>
<p>${media.summary }</p>
<a href="${media.link }">Live Link</a>
</li>

  </c:forEach>

</ul>


</div>


</div><!-- container -->

<%@ include file="partials/footer.jsp"%>

</body>
</html>