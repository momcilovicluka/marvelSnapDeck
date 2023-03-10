<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/style.css">
<meta charset="UTF-8" />
<title>Deckovi</title>
</head>
<body class="img js-fullheight"
	style="background-image: url(../images/background.jpg);">
	<div class="container">
		<div class="row justify-content-center"
			style="transform: translateY(20%)">
			<div class="col-md-6 col-lg-4">
				<div class="login-wrap p-0">
					<div class="social d-flex text-center">
						<a href="${pageContext.request.contextPath}"
							class="px-2 py-2 mr-md-1 rounded" style="text-align: center;">HOME</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row justify-content-center"
			style="transform: translateY(20%)">
			<div class="col-md-6 col-lg-4">
				<div class="login-wrap p-0">
					<form action="${pageContext.request.contextPath}/user/sviDeckovi"
						method="get">
						<div style="text-align: center; margin-top: 50px">
							<label for="kategorija" class="form-label" style="color: white;">
								Kategorija:</label> <select name="kategorija" id="kategorija">
								<option value="">Sve</option>
								<c:forEach items="${kategorije }" var="k">
									<option value="${k.idKategorija }">${k.naziv }</option>
								</c:forEach>
							</select> <br> <input type="submit" value="Pretrazi"
								class="btn btn-primary" style="color: white !important;">
						</div>
					</form>
				</div>
			</div>
		</div>
		<c:if test="${!empty deckovi}">
			<div style="text-align: center; margin-top: 50px">

				<table border="1">
					<tr>
						<th>ID</th>
						<th>Naziv</th>
						<th>Opis</th>
						<th>Kategorija</th>
						<th>Kreator</th>
						<th>Detalji</th>
					</tr>
					<c:forEach items="${deckovi }" var="d">
						<tr>
							<td>${d.idDeck }</td>
							<td>${d.naziv }</td>
							<td>${d.opis }</td>
							<td>${d.kategorija.naziv }</td>
							<td>${d.korisnik.username }</td>
							<td><a
								href="/marvelSnapDeck/user/vratiDeck?idDeck=${d.idDeck }">Detalji</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</c:if>
</body>
</html>
