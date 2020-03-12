<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>David Breitenbeck</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel ="stylesheet" href ="/MyStyle.css"/>

</head>
<body class="main">
<%@ include file="partials/header.jsp"%>

<div class="pad"></div>


<div class="quote">
<div class="q1">
<p>${quote }<br>-${src } </p>
</div>
</div>

<div class="pad2"></div>

<div class="container"> 
<div class="pad2"></div>
<p class="intro">Welcome! My name is David Breitenbeck, and I am a Java Developer and  Professional Writer.
 I designed, coded, and built just about everything you see here.
Take a look around and see some of the things I have to offer. 
</p>

</div>

<div class="pad2"></div>




<div class="container">
<div class="home">
	<div class="row">
		<div class="col-6">
		<h3><a href="/coding">Coding</a></h3>
		<p>I am a budding programmer, mostly in Java at the moment, along with Spring MVC, HTML/CSS, Javascript, and SQL.</p>
		</div>
		<div class="col-6">
		<h3><a href="/writing">Writing</a></h3>
		<p>I am a professional writer in many genres, whether fiction, non-fiction, or (occasionally) poetry.</p>
		</div>
	</div>

</div>
</div> 

<div class="pad2"></div>

</body>
</html>