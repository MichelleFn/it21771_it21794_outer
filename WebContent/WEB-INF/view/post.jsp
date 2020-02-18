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

<script type="text/javascript">
	function sendThesis() {

		var subject = document.getElementById("subject").value;
		var professor = document.getElementById("professor").value;
		var department = document.getElementById("department").value;
		var description = document.getElementById("description").value;

		var data = JSON.stringify({
			"subject" : subject,
			"professor" : professor,
			"description" : description,
			"department" : department
			
		});

		var xhr = new XMLHttpRequest();

		xhr.open("POST", "http://localhost:8081/Springmvc1/api/thesis");
		xhr.setRequestHeader("Content-Type", "application/json");
		xhr.setRequestHeader("Access-Control-Allow-Origin", "*");
		xhr.setRequestHeader("Access-Control-Allow-Credentials", "*");

		xhr.send(data);

	}
</script>
</head>

<body style="background-color: #B0C4DE;">

	<div class="topnav">


		<a>Χαροκόπειο Πανεπιστήμιο</a>

		<div class="topnav-right">
			<div class="topnav">
				<a href="/outerSystem/get">Φοιτητές που Αιτήθηκαν για Εργασία</a> <a
					href="/outerSystem/post">Υποβολή Πτυχιακής Εργασίας</a> <a
					href="/outerSystem/about">About</a> <a href="/outerSystem/">Home</a>
			</div>
		</div>

	</div>
	<style>
#subject, #professor, #department, #description {
	width: 20%;
	border: 0;
	outline: 0;
	border-bottom: 1px solid grey;
}

#rcorners1 {
	border-radius: 25px;
	background: #73AD21;
	padding: 20px;
	width: 200px;
	height: 150px;
}

.myButton {
	background: linear-gradient(to bottom, #0288bd 5%, #0288bd 100%);
	background-color: #0288bd;
	border-radius: 28px;
	border: 1px solid #0288bd;
	display: inline-block;
	cursor: pointer;
	color: #ffffff;
	font-family: Arial;
	font-size: 17px;
	font-weight: bold;
	padding: 10px 31px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #2f6627;
}

.myButton:hover {
	background: linear-gradient(to bottom, #0288bd 5%, #0288bd 100%);
	background-color: #0288bd;
}

.myButton:active {
	position: relative;
	top: 1px;
}
}
}
</style>
	<div align="center">
		<p>
			<b><font size="4">Φόρμα υποβολής θέματος πτυχιακής
					εργασίας</font></b>
		</p>
		<form action="success" name="AddThesis" method="POST"
			onsubmit="sendThesis() ">
			<br> <input placeholder="Subject" type="text" id="subject" name="Subject" required><br>
			 <br> <input placeholder="Professor" type="text" id="professor" name="Professor" required><br> 
			
<br>
			<select id="department">
			    <option balue="" selected="true" disabled="true">--Επιλογή--</option>
				<option value="udiet">Τμήμα Διαιτολογίας - Προπτυχιακό</option>
				<option value="pdiet">Τμήμα Διαιτολογίας - Μεταπτυχιακό</option>
				<option value="uit">Τμήμα Πληροφορικής και Τηλεματικής-Προπτυχιακό</option>
				<option value="pit">Τμήμα Πληροφορικής και Τηλεματικής-Μεταπτυχιακό</option>
				<option value="uecon">Τμήμα Οικιακής Οικονομίας-Προπτυχιακό</option>
				<option value="pecon">Τμήμα Οικιακής Οικονομίας-Μεταπτυχιακό</option>
				<option value="ugeo">Τμήμα Γεωγραφίας-Προπτυχιακό</option>
				<option value="pgeo">Τμήμα Γεωγραφίας-Μεταπτυχιακό</option>
			</select> 
			<br>
			<br> <input placeholder="Description" type="text" id="description" name="Description" required><br>
			<br> <input value="Υποβολή" type="submit" class="myButton">
		</form>
</body>
</html>
