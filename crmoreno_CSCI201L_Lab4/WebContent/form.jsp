<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Please fill in these questions</title>
	</head>
	<body>
		<h2>CSCI 201 Survey</h2>
		<form name="201form" method="POST" action="ValidateServlet">
			<% 
				String error = "Please enter value";
				String noError = "";
				String phone = (String)request.getAttribute("phone");
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
		
			Phone <input type="text" name="phone" value=<%= ((phone == null) ? "" : phone) %> />
			<font color="red"><strong><%= phone == null ? error : noError %></strong></font>
			<br />
			
			Email <input id="email" type="email" value=<%= ((email == null) ? "" : email) %> />
			<font color="red"><strong><%= ((email == null) ? error : noError) %></strong></font>
			<br /><br />
			
			What is your preferred method of contact? 
//selected??
			<input type="radio" id="contact1" name="contact" value="email" />
			<label for="contact1">Email</label>
			
			<input type="radio" id="contact2" name="contact" value="phone" />
			<label for="contact2">Phone</label>
			
			<input type="radio" id="contact3" name="contact" value="snailMail" />
			<label for="contact3">Snail Mail</label><br /><br />
			
			<label for="curMonth">What is the month?</label>
			<input id="curMonth" type="month" name="curMonth" value=<%= ((curMonth == null) ? "" : curMonth) %> />
			<font color="red"><strong><%= (contact == null) ? error : noError %></strong></font>
			<br /><br />
			
			<input type="search" id="mySearch" name="q" value=<%= ((search == null) ? "search this page" : search) %> />
			<font color="red"><strong><%= (search == null) ? error : noError %></strong></font>
			<br /><br />
			
			<textarea name="message" rows="10" cols="30" value=<%= ((message == null) ? "" : message) %>></textarea>
			<font color="red"><strong><%= (message == null) ? error : noError %></strong></font>
			<br /><br />
//select??
			What lecture time(s) do you attend? 
		    <input type="checkbox" id="8AM" name="lectureTime" value="8AM" />
 			<label for="8AM">8AM</label>
 			
 			<input type="checkbox" id="9:30AM" name="lectureTime" value="9:30AM" />
 			<label for="9:30AM">9:30AM</label>
 			
 			<input type="checkbox" id="11AM" name="lectureTime" value="11AM" />
 			<label for="11AM">11AM</label>
 			<font color="red"><strong><%= (lecture == null) ? error : noError %></strong></font>
 			<br /><br />
 			
 			Favorite URL <input id="myURL" name="myURL" type="url" value=<%= ((url == null) ? "http://google.com" : url) %>>
 			<font color="red"><strong><%= (url == null) ? error : noError %></strong></font>
 			<br /><br />
 			
 		//selected
 			<p>Please rate the class out of 5</p>
 			<select name="rating"> 
			  <option value="value1">1</option> 
			  <option value="value2">2</option>
			  <option value="value3" selected>3</option>
			  <option value="value4">4</option> 
			  <option value="value5">5</option>
			</select>
			<font color="red"><strong><%= (rating == null) ? error : noError %></strong></font>
			<br /><br />
			
			<label for="colorWell">Favorite color</label>
			<input type="color" id="colorWell" name="color" value=<%= ((color == null) ? "#ff0000" : color) %>/>
			<font color="red"><strong><%= (color == null) ? error : noError %></strong></font>
			<br /><br />
			
		
			<label for="recommend">Likelihood of recommending</label>
			<input type="range" list="tickmarks" id="recommend" name="recommend" />
			<datalist id="tickmarks">
			  <option value="0" label="0%">
			  <option value="10">
			  <option value="20">
			  <option value="30">
			  <option value="40">
			  <option value="50" label="50%">
			  <option value="60">
			  <option value="70">
			  <option value="80">
			  <option value="90">
			  <option value="100" label="100%">
			</datalist>
			<font color="red"><strong><%= (recommend == null) ? error : noError %></strong></font>
			<br /><br />
			
			<input type="reset" value="Reset the form" /><br />
				
			<button type="submit">Submit</button>
		

		</form>
	</body>
</html>