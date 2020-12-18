<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bomb Squad</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel ="stylesheet" href ="/MyStyle.css"/>
</head>
<body class="bombsquad">

<%@ include file="partials/header.jsp"%>

<div class="container bscon">
<div class="row">

<div class="col-md-6 offset-3">



<div class="bod"> 
<h2>Bomb Squad</h2>

<p>You've found a bomb with seconds to spare! Can you disarm it?</p>

<img src="" id="bombhomeimage" />

<form action ="/bombsquad/instructions">
<h3>Select Difficulty</h3>
<p><input type="radio" id="easy" name = "dif" value="1" checked="checked">
<label for="easy">Easy</label>
</p>
<p>
<input type="radio" id="medium" name = "dif" value="2">
<label for="medium">Medium</label><br>
</p>
<p>
<input type="radio" id="hard" name = "dif" value="3">
<label for="hard">Hard</label><br></p>


<button class="proceed" type="submit">Proceed</button>
</form>
<button class="escape" onclick="window.location.href='/games';">Escape</button>


</div>


</div><!-- col-md-6 -->

</div>
<!-- row -->

</div>
<!-- container -->
</body>
</html>