<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Dobrodosli na portal Marvel Snap Deck</h1>
	<a href="/Pozoriste/PretragaPredstava.jsp">Pretraga karata</a>
	<br />
	<security:authorize access="hasRole('Admin')">
		<a href="/marvelSnapDeck/admin/vratiPrazanTip">Dodaj tip</a>
		<br />
	</security:authorize>
</body>
</html>