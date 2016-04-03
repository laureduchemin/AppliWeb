/**
 * 
 */
package com.form;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.beans.Chat;

/**
 * @author laureduchemin
 *
 */
public final class TraitementListeChat {
	
	private static final String CHAMP_NOM    = "nomAglais";
    private String resultat;

	
    private Map<String, String> erreurs = new HashMap<String, String>();

    public String getResultat() {
        return resultat;
    }
    
    public Chat AfficherChat(HttpServletRequest request){
    	
    	String nom = setValeurChamp( request, CHAMP_NOM );
    	
        Chat chat = new Chat();

    	
    	
    	try {
            validationNom( nom );
        } catch ( Exception e ) {
            setErreur( CHAMP_NOM, e.getMessage() );
        }
        chat.setNomAnglais( nom );
  	
    	return null;
    	
    	
    }
    
    private void validationNom( String nom ) throws Exception {
        if ( nom != null ) {
            throw new Exception( "ERREUR AFFICHAGE" );
        }
    }
    
    private void setErreur( String champ, String message ) {
        erreurs.put( champ, message );
    }
    
    private static String setValeurChamp( HttpServletRequest request, String nomChamp ) {
        String valeur = request.getParameter( nomChamp );
        if ( valeur == null || valeur.trim().length() == 0 ) {
            return null;
        } else {
            return valeur.trim();
        }
        
    }

}
