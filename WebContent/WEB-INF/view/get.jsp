<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	overflow: hidden;
	background-color: #333;
}

.topnav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	background-color: #4CAF50;
	color: white;
}

.topnav-right {
	float: right;
}
</style>


<style>
.header {
  overflow: hidden;
  padding: 20px 10px;
}
.header a.logo {
  font-size: 20px;
  font-weight: bold;
   color: black;
}

</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<script language="javascript">
	function myFunction() {

		//var data = "";

		var xhr = new XMLHttpRequest();

		xhr.addEventListener("readystatechange", function() {
			if (this.readyState === 4) {

				var response = JSON.parse(this.responseText);
				myResponse(response);
				console.log(response);
			}
		});

		xhr.open("GET", "http://localhost:8081/Springmvc1/api/users");
		xhr.setRequestHeader("Content-Type", "application/json");
		xhr.setRequestHeader("Access-Control-Allow-Origin", "*");
		xhr.setRequestHeader("Access-Control-Allow-Credentials", "*");

		function myResponse(arr) {
			var out = "";
			var i;
			for (i = 0; i < arr.length; i++) {
				out += arr[i].firstName + arr[i].surname + '</a><br>';
			}
			document.getElementById("id01").innerHTML = out;
		}

		xhr.send();
	}
</script>
</head>
<body style="background-color:
#B0C4DE;">
<div class="topnav">
	
		
			<a>Χαροκόπειο Πανεπιστήμιο</a>

			<div class="topnav-right">
				<div class="topnav">
					<a href="/outerSystem/get">Φοιτητές που Αιτήθηκαν για Εργασία</a>
  					<a href="/outerSystem/post">Υποβολή Πτυχιακής Εργασίας</a>
					 <a href="/outerSystem/about">About</a>
					  <a href="/outerSystem/">Home</a>
					</div>
				</div>

		</div>
	<h1>Get Student Data</h1>
	<button type="submit" class="button" onclick="myFunction()">GET</button>
	<br>

	<div id="id01">



	</div>
</body>
</html>