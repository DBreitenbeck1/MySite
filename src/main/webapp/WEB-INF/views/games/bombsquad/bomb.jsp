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
<body class="bombsquad" onload="myTimer = setInterval(CD, 1000), rand(), hide()">


<div class="container bscon">
<div class="row">

<div class="col-md-6 offset-3">


	<div class="bombbod">


		<div class="question">
			<p id="q"></p>
		</div>

<p id="ex"></p>
		<input type="text" id="answer"> <br>
		<button id="check" onClick="check()">Try</button>


		<div>
			<p id="win"></p>
		</div>

		<div id="again">
			<form action="/bombsquad/bomb">
			<p>Go Again?</p>
				<input type="hidden" value="${time }" name="time"> <input
					type="hidden" value="${ques}" name="ques"> <input
					type="hidden" value="${exTime}" name="exTime"> <input
					type="hidden" value="${dif}" name="dif">
				<button class="proceed" type="submit">Yes</button>	
			</form>
			<button class="escape" onclick="window.location.href='/games';">No</button>
		</div> 

<div class="bomb">
	<p id="countdown"></p>
	<img src="/images/bomb.jpg" id="bombphoto"/>
<!--  	<img src="images/bomb.jpg" alt="bomb" id="bombphoto"/>-->
	
</div>
	</div>

</div><!-- col-md-6 -->

</div>
<!-- row -->

</div>
<!-- container -->

	<script>
var c = ${time};
var num1;
var num2;
var ans;
var right = 0;
var dif =${dif};

function rand(){
	
	switch(dif){
	
	<!-- Easy -->
	case 1: 
		num1 = Math.floor((Math.random()*10) + 1)*5;
		num2 = Math.floor((Math.random()*10) + 1)*5;
		cond = Math.floor((Math.random()*2+1));
		switch(cond){
		case 1:
			ans = num1 + num2;
			document.getElementById("q").innerHTML=num1 + "+" +num2;
			break;
		case 2:
			if (num1>num2){ 
			ans = num1 - num2;
			document.getElementById("q").innerHTML=num1 + "-" +num2;
			} else {
				ans = num2 - num1;
				document.getElementById("q").innerHTML=num2 + "-" +num1;
			}
			break;
		}
		document.getElementById("countdown").innerHTML= c;
			
		break;
		
<!-- Medium -->
	case 2: 
		num1 = Math.floor((Math.random()*20) + 1)*3;
		num2 = Math.floor((Math.random()*20) + 1)*3;
		
		cond = Math.floor((Math.random()*2+1));
		switch(cond){
		case 1:
			ans = num1 + num2;
			document.getElementById("q").innerHTML=num1 + "+" +num2;
			break;
		case 2:
			if (num1>num2){ 
				ans = num1 - num2;
				document.getElementById("q").innerHTML=num1 + "-" +num2;
				} else {
					ans = num2 - num1;
					document.getElementById("q").innerHTML=num2 + "-" +num1;
				}
				break;
		}
		document.getElementById("countdown").innerHTML= c;
		break;
<!-- Hard -->
	case 3: 
		num1 = Math.floor((Math.random()*100) + 1);
		num2 = Math.floor((Math.random()*100) + 1);
		
		cond = Math.floor((Math.random()*2+1));
		switch(cond){
		case 1:
			ans = num1 + num2;
			document.getElementById("q").innerHTML=num1 + "+" +num2;
			break;
		case 2:
			
				ans = num1 - num2;
				document.getElementById("q").innerHTML=num1 + "-" +num2;
				
				break;
		}
		document.getElementById("countdown").innerHTML= c;
		break;
	}
	
}

function CD() {
	if(c>0){
	c = c-1;
	document.getElementById("countdown").innerHTML=c;
	} else if (c<=0){
		expl();
	}
	}

function add(){
	c+=${exTime};
}

function sub(){
	c-=${exTime};
}

function expl(){
	document.getElementById("ex").innerHTML="BOOM!";
	document.getElementById("again").style.display="inline";
	document.getElementById("answer").disabled=true;
	
}

function check(){
	var a = document.getElementById("answer").value;
	if (a== ans){
		add();
		right += 1;
		
	} else {
		sub();
		right -=1;
		
	}
	if (right == ${ques}){
		clearInterval(myTimer);
		document.getElementById("win").innerHTML="Winner!";
		document.getElementById("again").style.display="inline";
		document.getElementById("answer").disabled=true;
	} else{
	rand(); 
	}
	
	document.getElementById("answer").value = "";
	
}



	 document.onkeydown=function(evt){
	        var keyCode = evt ? (evt.which ? evt.which : evt.keyCode) : event.keyCode;
	        if(keyCode == 13)
	        {
	        	document.getElementById("check").click();
	        }
	 	}
	 
	 function hide(){
		 document.getElementById("again").style.display="none";
			document.getElementById("win").innerHTML="";
			
	 }

</script>




</body>


</html>