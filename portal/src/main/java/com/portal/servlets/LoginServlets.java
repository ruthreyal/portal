package com.portal.servlets;

import java.io.IOException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns="/login")
public class LoginServlets extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String email=(String) request.getParameter("user");
		String password= (String) request.getParameter("passwd");
		//esto debe ser modificado por una consulta de BBDD
		if("prueba@email.com".equals(email) && "prueba".equals(password)) {
			HttpSession sesion =request.getSession();
			sesion.setAttribute("usuario", email);
			response.sendRedirect("index.jsp");
		}else {
			response.sendRedirect("/portal/jsp/login.jsp");
		}
		
		
		
	}
	
}
