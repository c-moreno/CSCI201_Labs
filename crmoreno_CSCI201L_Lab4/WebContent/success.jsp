<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Your Information</title>
	</head>
	<body>
		<h2>Your Information</h2>
		<% String phone = (String)request.getAttribute("phone");
		String email = (String)request.getAttribute("email");
		String contact = (String)request.getAttribute("contact");
		String month = (String)request.getAttribute("curMonth");
		String search = (String)request.getAttribute("q");
		String message = (String)request.getAttribute("message");
		String lecture = (String)request.getAttribute("lectureTime");
		String rating = (String)request.getAttribute("rating");
		String url = (String)request.getAttribute("myURL");
		String color = (String)request.getAttribute("color");
		String recommend = (String)request.getAttribute("recommend");
		%>
		

		Email: <%= email %><br />
		Phone: <%= phone %><br />
		Best form of contact: <%= contact %><br />
		Month: <%= month %><br />
		Search: <%= search %><br />
		Message: <%= message %><br />
		Lecture Time: <%= lecture %><br />
		Rating: <%= rating %><br />
		URL: <%= url %><br />
		Color: <%= color %><br />
		Recommend: <%= recommend %><br />
		
	</body>
</html>