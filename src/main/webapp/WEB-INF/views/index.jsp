<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Noble Cobra</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous"> 
<link rel ="stylesheet" href ="/MyStyle.css"/>

</head>
<body class="main">
<%@ include file="partials/header.jsp"%>

<div class="slider">

<h1 id="title">Noble Cobra Productions</h1>
<h3 id="subtitle">Tradition, Imagination, Faith, Adventure</h3>
<h5 id="byline">The Work and Thoughts of David Breitenbeck</h5>


		<div class="q1">
			<p>${quote }<br>-${src } </p>
		</div>
	


</div><!-- slider  -->

<main>
	<div class="container"> 
	
			<div class="row">
			
				<div class="box"> 
				<p class="intro">Welcome! My name is David Breitenbeck, and I am a Java Developer and  Professional Writer.
				 I designed, coded, and built just about everything you see here.
				Take a look around and see some of the things I have to offer. 
				</p>
			</div>
			</div>
			
	<div class="row">				
		<div class="col-md-6 box">
			<h4>Works for Sale</h4>
			<a href="" >Where you can buy our works</a>
		</div><!-- col-md-6 -->
			
		<div class="col-md-5 offset-1 box" id="blog"> 
			<h4>Serpent's Den</h4>
			<a href="https://serpentshouse.com" >My Blog, with my latest news and thoughts</a>
				<div id="blog-emb">
					<iframe src="https://serpentshouse.com#content" height="600px" width="100%"></iframe>
				</div>
		</div><!-- col-md-6 -->
	</div><!-- row -->
	
	
			
</div><!-- container -->

</main>

</body><!-- main -->


<%@ include file="partials/footer.jsp"%>
</html>