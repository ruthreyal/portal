<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="../Script/ValidacionesRegistro.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
	<form action="../registro" method="POST" id="frm">
		<label>Nombre</label> <input type="text" name="nombre" id="nombre" required> <br>
		<div class="errorNombre"></div>
		<br>
		<label>Apellidos</label> <input type="text" name="apellidos" id="apellido" required>
		<div class="errorApellidos"></div>
		<br> <label>Email</label> <input type="email" name="user" id="user-email" required>
		<div class="errorEmail"></div>
		<br> <label>Fecha de nacimiento</label> <input type="date"
			name="nacimiento" id="fecha_nacimiento" required> 
			<div class="FecNacimiento"></div>
			<br> <label>DNIE</label>
			 <input type="text" name="dni" id="dni" required>
			 <div class="errorDNI"></div>
			 <br> 
			 <label>Centro de estudios</label> <select>
			<option>IES Alixar</option>
			<option>IES Hermanos Machado</option>
			<option>IES Salesianos</option>
			<option>IES Sotero Hernandez</option>
			<option>IES Juan de Mairena</option>
			<option>IES Atenea</option>
		</select> 
		<br>
		 <label>Curso</label> <select>
			<option>IES Alixar</option>
			<option>IES Hermanos Machado</option>
			<option>IES Salesianos</option>
			<option>IES Sotero Hernandez</option>
			<option>IES Juan de Mairena</option>
			<option>IES Atenea</option>
		</select> 
		<br>
		<label for="contrasena"><b>Contraseña: </b></label> 
		<input type="password" name="contrasena" id="contrasena" value="" placeholder="Ingrese su contraseña..." required> <label
			for="recontrasena"><b>Repetir Contraseña: </b></label> <input
			type="password" name="recontrasena" id="recontrasena" value=""
			placeholder="Confirme su contraseña..." required> <input
			type="button" value="Registrar" onclick="validar()">
			<div class="errorContrasena"></div>
</body>
</html>

