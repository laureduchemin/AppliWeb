/**
 * 
 */
package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Utilisateur;
import com.form.TraitementInscription;

/**
 * @author laureduchemin
 *
 */

public class PageInscription extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static final String VUE = "/WEB-INF/PageInscription.jsp";
	public static final String ATT_USER = "utilisateur";
    public static final String ATT_FORM = "form";
	
	public void doGet( HttpServletRequest request, HttpServletResponse response ) 
			throws ServletException, IOException{

		this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
	}
	

	public void doPost( HttpServletRequest request, HttpServletResponse response ) 
			throws ServletException, IOException{
		
		TraitementInscription form = new TraitementInscription();
		Utilisateur utilisateur = form.inscrireUtilisateur( request );
        
        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_USER, utilisateur );
        
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );

    }
	
	private void validationPseudo( String pseudo ) throws Exception {
	    if ( pseudo != null && pseudo.trim().length() < 3 ) {
	        throw new Exception( "Le nom d'utilisateur doit contenir au moins 3 caractères." );
	        
	        /* Gérer les doublons en bdd */
	    }
	}
	
	private void validationEmail( String email ) throws Exception {
	    if ( email != null && email.trim().length() != 0 ) {
	        if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
	            throw new Exception( "Merci de saisir une adresse mail valide." );
	        }
	    } else {
	        throw new Exception( "Merci de saisir une adresse mail." );
	    }
	}
	
	private void validationMotsDePasse( String motDePasse, String confirmation ) throws Exception{
	    if (motDePasse != null && motDePasse.trim().length() != 0 && confirmation != null && confirmation.trim().length() != 0) {
	        if (!motDePasse.equals(confirmation)) {
	            throw new Exception("Les mots de passe entrés sont différents, merci de les saisir à nouveau.");
	        } else if (motDePasse.trim().length() < 3) {
	            throw new Exception("Les mots de passe doivent contenir au moins 3 caractères.");
	        }
	    } else {
	        throw new Exception("Merci de saisir et confirmer votre mot de passe.");
	    }
	}

}
