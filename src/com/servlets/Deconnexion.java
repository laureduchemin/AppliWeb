/**
 * 
 */
package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author laureduchemin
 *
 */
public class Deconnexion extends HttpServlet {

	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String VUE = "WEB-INF/PageConnexion.jsp";
	
	/**
	 * Mettre lien de redirection
	 */
	public static final String URL_REDIRECTION = "";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /** Récupération et destruction de la session en cours */
        HttpSession session = request.getSession();
        session.invalidate();

        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
}
