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
<body class="code">
<%@ include file="partials/header.jsp"%>

<div class="pad"></div>


<h2 class="cod">My Coding Work</h2>

<div class="container3">

<div class="pad2"></div>

<div class="q3">
<p>${quote }<br>-${src } </p>
</div>

<div class="pad2"></div>



<div>
<table class="table">
  <tr>
    
    <th>Summary</th>
     <th>Link</th>
  </tr>
  <c:forEach items = "${codes }" var ="code">
  <tr>
   <td>${code.summary }</td>
   <td><a href ="${code.link }">${code.link }</a></td>
  </tr>
  </c:forEach>
</table>

<div class="pad2"></div>

</div>
</div>
</body>
</html>