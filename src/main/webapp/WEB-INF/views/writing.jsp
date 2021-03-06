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
<body class="innerpage">
<%@ include file="partials/header.jsp"%>

<%@ include file="partials/innerslider.jsp"%>


<div class ="container">

<h2 class="pageheader">My Writing</h2>


<div class="row">
<div class="col-md-12 box">
<p></p>
</div>
</div>


<h5 class= "sectheader">Categories</h5>
<ul class="cat">
<li><form action="/writing"><button class="category-btn" type="submit">All</button></form></li>
<c:forEach items="${categories}" var ="cat">
<li><form action="/findCat"><button class="category-btn" type="submit" name="cat" value="${cat}" >
${cat}
</button></form></li>
</c:forEach>
</ul>

<div>
		<table class="table">
		  <tr>
		    <th><a href="/title">Title</a></th>
		    <th><a href="/category">Category</a></th>
		    <th>Summary</th>
		    
		  </tr>
		  <c:forEach items = "${writings }" var ="write">
		  <tr>
		    <td><a href="${write.link }">${write.title }</a></td>
		     <td>${write.category }</td>
		   <td>${write.summary }</td>
		   
		  </tr>
		  </c:forEach>
		</table>

</div>
</div>

<%@ include file="partials/footer.jsp"%>
</body>
</html>