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

import com.beans.Astuce;
import com.form.TraitementAjoutAstuce;

/**
 * @author laureduchemin
 *
 */
public class AjoutAstuces extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	public static final String RED_LOGIN_USR = "/PageConnexion";
	public static final String VUE = "/WEB-INF/PageProfil.jsp";
	public static final String ATT_SESSION_USER = "sessionUtilisateur";
    public static final String ATT_FORM = "form";
    public static final String ATT_ASTUCE = "astuce";


	
	public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

    	HttpSession session = request.getSession();
    	
    	if ( session.getAttribute( ATT_SESSION_USER ) == null ) {
            /* Redirection vers la page connexion */
            response.sendRedirect( request.getContextPath() + RED_LOGIN_USR );
        } else {
            /* Affichage de la page restreinte */
            this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
        }        
    }
	
    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        /* Préparation de l'objet formulaire */
        TraitementAjoutAstuce form = new TraitementAjoutAstuce();
        
        /* Appel au traitement et à la validation de la requête, et récupération du bean en résultant */
        Astuce astuce = form.ajouterAstuce( request );
        
        /* Stockage du formulaire et du bean dans l'objet request */
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_ASTUCE, astuce );
        
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }

}
