<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html>
	<html>
		<head>
			<meta charset="ISO-8859-1">
			<title>Registro</title>
			<link rel="stylesheet" href="css/Registro.css">
			<meta name="author" content="María Perez Vaca e Iván Naranjo Marín">

			<!--Fuente de Google Font que utiliza el proyecto-->
			<link rel="preconnect" href="https://fonts.googleapis.com">
			<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
			 <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
			<!--Font Awesome-->
			<script src="https://kit.fontawesome.com/efd4e72963.js" crossorigin="anonymous"></script>
			<!--JavaScript-->
			<script type="text/javascript" src="js/ValidacionesRegistro.js"></script>
		</head>
		<body>
			<h1>Registrarse</h1>
			<form action="../registro" method="POST" id="frm">
				<label>Nombre</label> <input type="text" name="nombre" id="nombre" required>
				<div class="errorNombre"></div>
				<label>Apellidos</label> <input type="text" name="apellidos" id="apellido" required>
				<div class="errorApellidos"></div>
				<label>Email</label> <input type="email" name="user" id="user-email" required>
				<div class="errorEmail"></div>
				<label>Fecha de nacimiento</label> <input type="date" name="nacimiento" id="fecha_nacimiento" required>
				<div class="FecNacimiento"></div>
				<label>DNIE</label> <input type="text" name="dni" id="dni" required>
				<div class="errorDNI"></div>
				
				<label>Centro de estudios</label> <select>
					<option>IES Alixar</option>
					<option>IES Hermanos Machado</option>
					<option>IES Salesianos</option>
					<option>IES Sotero Hernandez</option>
					<option>IES Juan de Mairena</option>
					<option>IES Atenea</option>
				</select>

				<label>Curso</label> <select>
					<option>IES Alixar</option>
					<option>IES Hermanos Machado</option>
					<option>IES Salesianos</option>
					<option>IES Sotero Hernandez</option>
					<option>IES Juan de Mairena</option>
					<option>IES Atenea</option>
				</select>

				<label for="contrasena">Contraseña:</label>
				<input type="password" name="contrasena" id="contrasena" value="" placeholder="Ingrese su contraseña..." required> 
				
				<label for="recontrasena">Repetir Contraseña:</label> 
				<input type="password" name="recontrasena" id="recontrasena" value="" placeholder="Confirme su contraseña..." required> 
				<input id="boton" type="button" value="Registrar" onclick="validar()">
				<div class="errorContrasena"></div>
			</form>
		</body>
</html>