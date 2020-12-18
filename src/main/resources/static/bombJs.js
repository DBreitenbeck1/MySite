
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
	        	document.getElementById("btn").click();
	        }
	 	}
	 
	 function hide(){
		 document.getElementById("again").style.display="none";
			document.getElementById("win").innerHTML="";
			
	 }
