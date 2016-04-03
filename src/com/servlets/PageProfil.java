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
public class PageProfil extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String RED_LOGIN_USR = "/PageConnexion";
	public static final String VUE = "/WEB-INF/PageProfil.jsp";
	public static final String ATT_SESSION_USER = "sessionUtilisateur";
	
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

    	HttpSession session = request.getSession();
    	
    	if ( session.getAttribute( ATT_SESSION_USER ) == null ) {
            /* Redirection vers la page publique */
            response.sendRedirect( request.getContextPath() + RED_LOGIN_USR );
        } else {
            /* Affichage de la page restreinte */
            this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
        }        
    }
}
