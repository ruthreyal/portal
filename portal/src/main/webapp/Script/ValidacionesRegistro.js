/**
*
*/
"use strict";
 
function validar() {
 
	let correcto = comprobarErrores();
	if (correcto) {
		//recuperamos el formulario y submitimos
		let oFormu = document.getElementById("frm");
		oFormu.submit();
	}
}
 
function comprobarErrores() {
	//en caso de que salida = false no se envia el formulario y muestra el mensaje
	let salida = true;
 
	//validar nombre
	let expRegNombre = /^[a-zA-Z\s]{2,254}$/;
	let nombre = document.getElementById("nombre");
	let mensajeNombre = document.getElementsByClassName("errorNombre")[0];
	if (!expRegNombre.test(nombre.value)) {
		salida = false;
		mensajeNombre.innerHTML = "<p> El nombre debe estar compuesto por letras</p>";
 
	} else {
		mensajeNombre.innerHTML = "";
	}
 
	//validar apellido
	let expRegApellido = /^[a-zA-Z\s]{2,254}$/;
	let apellido = document.getElementById("apellido");
	let mensajeApellido = document.getElementsByClassName("errorApellidos")[0];
	if (!expRegApellido.test(apellido.value)) {
		salida = false;
		
		mensajeApellido.innerHTML = "<p> Los apellidos deben estar compuesto por letras</p>";
	}else {
		mensajeApellido.innerHTML = "";
	}
 
	//validar contrseña
	var pass = document.getElementById("contrasena").value;
	var repass = document.getElementById("recontrasena").value;
	let mensajeContrasena = document.getElementsByClassName("errorContrasena")[0];
	if (pass != repass) {
		salida = false;
		
		mensajeContrasena.innerHTML = "<p> Las contraseñas deben ser iguales</p>";
	}else {
		mensajeContrasena.innerHTML = "";
	}
 
	//validar email
 
	var emailField = document.getElementById('user-email');
	var validEmail = /^\w+([.-_+]?\w+)*@\w+([.-]?\w+)*(\.\w{2,10})+$/;
	let mensajeEmail = document.getElementsByClassName("errorEmail")[0];
	if (!validEmail.test(emailField.value)) {
		salida = false;
		
		mensajeEmail.innerHTML = "<p> El formato debe ser prueba@prueba.com </p>";
	}else {
		mensajeEmail.innerHTML = "";
	}
	
	//validar edad
 
	var hoy = new Date();
	var cumpleanos = new Date(document.getElementById("fecha_nacimiento").value);
	var edad = hoy.getFullYear() - cumpleanos.getFullYear();
	var m = hoy.getMonth() - cumpleanos.getMonth();
	let mensajeEdad = document.getElementsByClassName("FecNacimiento")[0];
	if (m < 0 || (m === 0 && hoy.getDate() < cumpleanos.getDate())) {
		edad--;
	}
 
	if (edad < 16) {
		salida = false;
		
		mensajeEdad.innerHTML = "<p>Debe ser mayor de 16 años </p>";
	}else {
		mensajeEdad.innerHTML = "";
	}
 
	//validar dni
	let cadena = "TRWAGMYFPDXBNJZSQVHLCKET";
 
	let DNI = document.getElementById("dni").value;
 
	let numDNI = parseInt(DNI.substring(0, 8));
 
	let posicion = numDNI % (cadena.length - 1);
 
 
	let letraDNI = DNI.charAt(DNI.length - 1);
	let mensajeDNI = document.getElementsByClassName("errorDNI")[0];
	if (letraDNI != cadena[posicion]) {
		salida = false;
		
		mensajeDNI.innerHTML = "<p>DNI incorrecto</p>";
	}else {
		mensajeDNI.innerHTML = "";
	}
 
	return salida;
}