<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>

<%
if(request.getSession().getAttribute("usuario")==null){
	response.sendRedirect("/portal/jsp/login.jsp");
}
%>
<html>
 
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>ProyectoFP</title>
 
<link rel="stylesheet" href="css/index.css">
<script src="https://kit.fontawesome.com/efd4e72963.js"
	crossorigin="anonymous"></script>
 
</head>
 
<body>
 
	<div class="total">
		<header>
 
 
 
			<div>
				<i class="fa-solid fa-school" style="margin-bottom: 7px;"></i>
				<div class="cabecera">Nombre del centro</div>
			</div>
			<div>
 
				<div class="cabecera">Nombre del usuario</div>
				<i class="fa-solid fa-user-pen" style="margin-bottom: 6px;"></i>
			</div>
 
 
 
		</header>
 
 
		<sidebar>
		<div>
			<i class="fa-solid fa-house casa-icon"></i> <a href="">CENTRO</a>
 
		</div>
		<div>
 
			<i class="fa-solid fa-book cuadrado-icon"></i> <a href="">MÓDULO</a>
 
		</div>
		<div>
 
			<i class="fa-solid fa-chalkboard-user"></i> <a href="">TUTORÍAS</a>
 
		</div>
		<div>
			<i class="fa-solid fa-file-lines cuadrado-icon"></i> <a href="">CALIFICACIONES</a>
 
		</div>
 
		</sidebar>
 
		<main>
 
			<h2>TRENDING NEWS ON PORTAL</h2>
 
 
		</main>
 
 
		<footer>
 
			<p>2024 copyright© Ruth Reyes. All rights&nbsp;reserved</p>
 
		</footer>
 
	</div>
</body>
</html>