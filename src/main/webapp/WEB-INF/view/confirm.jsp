<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Successful registration</title>
</head>
<body>
	<p> Candidate Name: ${candidate.firstName} ${candidate.lastName}</p><br>
	<p>Year of experience: ${candidate.exp}</p><br>
	<p>Gender: ${candidate.gender}</p><br>
	<p>Expected CTC: ${candidate.ctc}</p><br>
	<p>
	<ul>Programming Languages Familiar with:
		<c:forEach items="${candidate.language}" var="lang">
			<li>${lang}</li>
		</c:forEach>
		
	</ul>
	</p>
	<br>
	<p>Phone number: ${candidate.code}${candidate.phone}</p> 

</body>
</html>