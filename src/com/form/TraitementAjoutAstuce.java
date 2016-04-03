/**
 * 
 */
package com.form;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.beans.Astuce;

/**
 * @author laureduchemin
 *
 */
public final class TraitementAjoutAstuce {
	
	private static final String CHAMP_PSEUDO  = "pseudo";
    private static final String CHAMP_CHAT   = "nomanglais";
    private static final String CHAMP_ASTUCE = "astuce";
    private String resultat;
    private Map<String, String> erreurs = new HashMap<String, String>();
  
    public String getResultat() {
        return resultat;
    }
    
    public Map<String, String> getErreurs() {
        return erreurs;
    }
    
    public Astuce ajouterAstuce(HttpServletRequest request){
    	
    	/** Récupération des champs du formulaire */
        String pseudo = getValeurChamp( request, CHAMP_PSEUDO );
        String nomanglais = getValeurChamp( request, CHAMP_CHAT );
        String newastuce = getValeurChamp( request, CHAMP_ASTUCE );

        

        Astuce astuce = new Astuce();
        
        /** Validation du champ mot de pseudo. */
        try {
            validationPseudo( pseudo );
        } catch ( Exception e ) {
            setErreur( CHAMP_PSEUDO, e.getMessage() );
        }
        astuce.setPseudoJoueur( pseudo );
        
        /** Validation du champ mot de nom anglais chat. */
        try {
            validationNomAnglais( nomanglais );
        } catch ( Exception e ) {
            setErreur( CHAMP_CHAT, e.getMessage() );
        }
        astuce.setNomChat( nomanglais );
        
        /** Validation du champ astuce. */
        try {
            validationAstuce( newastuce );
        } catch ( Exception e ) {
            setErreur( CHAMP_ASTUCE, e.getMessage() );
        }
        astuce.setAstuce( newastuce );
        
        
        /** Initialisation du résultat global de la validation. */
        if ( erreurs.isEmpty() ) {
            resultat = "Succès de la connexion.";
        } else {
            resultat = "Échec de la connexion.";
        }
        
  	    	return astuce;
    	
    	
    }
    
    /**
     * Valide le pseudo saisi.
     */
    private void validationPseudo( String pseudo ) throws Exception {
        if ( pseudo != null ) {
        	 if ( pseudo.length() < 3 ) {
            throw new Exception( "Merci de saisir un pseudo valide." );
        }
        }
    }
    
    /**
     * Valide le nom du chat saisi.
     */
    private void validationNomAnglais( String nomanglais ) throws Exception {
        if ( nomanglais != null ) {
        	 if ( nomanglais.length() < 3 ) {
            throw new Exception( "Merci de saisir un nom anglais de chat valide." );
        }
        }
    }
    
    /**
     * Valide l'astuce.
     */
    
    private void validationAstuce( String astuce ) throws Exception {
        if ( astuce != null && astuce.length() < 3 ) {
            throw new Exception( "L'astuce doit contenir au moins 3 caractères." );
        }
    }
    
    /**
     * Ajoute un message correspondant au champ spécifié à la map des erreurs.
     */
    private void setErreur( String champ, String message ) {
        erreurs.put( champ, message );
    }
    
    /**
     * Méthode utilitaire qui retourne null si un champ est vide, et son contenu
     * sinon.
     */
    private static String getValeurChamp( HttpServletRequest request, String nomChamp ) {
        String valeur = request.getParameter( nomChamp );
        if ( valeur == null || valeur.trim().length() == 0 ) {
            return null;
        } else {
            return valeur;
        }
    }
}
