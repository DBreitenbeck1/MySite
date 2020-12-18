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

<div class="container bscon">
<div class="row">

<div class="col-md-6 offset-3">



<div class="bod">
<h2>Good Luck!</h2>

<p>The bomb can only be disarmed by correctly answer ${ ques } problems in a row.</p>
<p>You have ${time } seconds</p>
<p>Each correct answer will gain you ${exTime} more seconds. Each wrong answer will lose you ${exTime } seconds.</p>
<p>We're all counting on you!</p>

<form action ="/bombsquad/bomb" > 
<input type="hidden" name ="dif" value="${dif}">
<input type="hidden" name ="cat" value="${cat}">
<input type="hidden" name ="time" value="${time}">
<input type="hidden" name ="exTime" value="${exTime}">
<input type="hidden" name ="ques" value="${ques}">
<button class="proceed" type = submit>Begin</button>
 </form>
</div>


</div><!-- col-md-6 -->

</div>
<!-- row -->

</div>
<!-- container -->

</body>
</html>