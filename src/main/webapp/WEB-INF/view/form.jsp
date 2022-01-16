<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix= "form" uri = "http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Candidate Hiring Registration Form</title>
</head>
<style>
	.errors{
	color:red
	}

</style>
<body>
	<h1>Hiring Registration Form</h1>
	<form:form action = "processForm" modelAttribute = "candidate">
		Title:     			
		<form:select path="title">
			<form:option value = "Mr" label = "Mr"></form:option>
			<form:option value = "Mrs" label = "Mrs"></form:option>
			<form:option value = "Miss" label = "Miss"></form:option>
		</form:select>
		<br>
		FirstName: 			<form:input path = "firstName"></form:input>
		<form:errors path = "firstName" cssClass="errors"></form:errors>
		<br>
		
		LastName:  			<form:input path = "lastName"></form:input>
		<br>
		
		years of Experience:
		<form:select path = "exp" >
			<form:option value="" label="--- Select ---"/>
			<form:option value = "<1" label = "Fresher"/>
			<form:option value="<3" label = "Early Professional"/>
			<form:option value="<7" label = "Professional"/>
			<form:option value=">10" label = "Expert"/>
		</form:select>
		<form:errors path = "exp" cssClass="errors"></form:errors>
		
		<br>
		Gender:				
		<form:radiobutton path = "gender" value = "Male" label = "Male"></form:radiobutton>
		<form:radiobutton path = "gender" value = "Female" label = "Female"></form:radiobutton>
		<form:radiobutton path = "gender" value = "Not wish to reveal" label = "Not wish to reveal"></form:radiobutton>
		<form:errors path = "gender" cssClass="errors"></form:errors>
		<br>
		expected ctc (lpa): <form:input path = "ctc"></form:input>
		<form:errors path = "ctc" cssClass="errors"></form:errors>
		<br>
		programming languages:   
		<form:checkbox path = "language" value="C" label = "C"></form:checkbox>
		<form:checkbox path = "language" value="Cpp" label = "Cpp"></form:checkbox>
		<form:checkbox path = "language" value="Java" label = "Java"></form:checkbox>
		<form:checkbox path = "language" value="Python" label = "Python"></form:checkbox>
		<form:errors path = "language" cssClass="errors"></form:errors>
		<br>
		
		<p>Phone Number</p>
		Country Code: 		
		<form:select path = "code">
			<form:option value="" label="--- Select ---"/>
			<form:option value = "+91" label = "India"/>
			<form:option value="+1" label = "USA"/>
			<form:option value="+44" label = "UK"/>
			<form:option value="+63" label = "Phillipines"/>
		</form:select>
		<form:errors path = "code" cssClass="errors"></form:errors>
		
		Phone:				<form:input path = "phone"></form:input>
		<form:errors path = "phone" cssClass="errors"></form:errors>
		<input type="submit" value="submit">
	</form:form>
</body>
</html>