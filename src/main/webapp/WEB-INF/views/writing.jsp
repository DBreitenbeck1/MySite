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
<body class="write">
<%@ include file="partials/header.jsp"%>


<div class="pad"></div>

<h2 class="writ">My Writing</h2>

<div class ="container2">

<div class="pad2"></div>
<div class="q2"> 
<p>${quote }<br>-${src } </p>
</div>

<div class="pad2"></div>

<h5 class= writ1>Categories</h5>
<ul class="cat">
<li><form action="/writing"><button type="submit">All</button></form></li>
<c:forEach items="${categories}" var ="cat">
<li><form action="/findCat"><button type="submit" name="cat" value="${cat}" >
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

</body>
</html>