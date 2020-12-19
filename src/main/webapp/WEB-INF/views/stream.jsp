<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>The Stream</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel ="stylesheet" href ="/MyStyle.css"/>
</head>
<body class="innerpage">
<%@ include file="partials/header.jsp"%>

<%@ include file="partials/innerslider.jsp"%>

<div class="container">

<h2 class="pageheader">The Stream</h2>

<div class="row">
<div class="col-md-12 box">
<h4>What is the Stream?</h4>
<p>The Stream is the course of culture</p>
</div>
</div>


<h5 class= "sectheader">Search by Medium</h5>
<ul class="cat">
<li><form action="/stream"><button type="submit">All</button></form></li>
<c:forEach items="${media}" var ="med">
<li><form action="/findMed"><button type="submit" name="med" value="${med}" >
${med}
</button></form></li>
</c:forEach>
</ul>


	<div>
		<table class="table">
		  <tr>
		    <th><a href="/title">Title</a></th>
		    <th>Image</th>
		    <th>Medium</th>
		    <th>Sale Link</th>
		    <th>Summary</th>
		    <th>Canon Status?</th>
		    
		  </tr>
		  <c:forEach items = "${works }" var ="work">
		  <tr>
		    <td><a href="${work.revLink }">${work.title }</a></td>
		    <td><img class="stringimg" src="${work.image }"/></td>
		    <td>${work.medium }</td>
		          <td> <a href="${work.saleLink }">${work.title }</a>
		          </td>
		   <td>${work.summary }</td>
		  <td>${work.canon }</td>
		  </tr>
		  </c:forEach>
		</table>
	
	</div><!-- table-section -->
</div><!-- container -->

<%@ include file="partials/footer.jsp"%>
</body>
</html>