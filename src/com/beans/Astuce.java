/**
 * 
 */
package com.beans;

import java.io.Serializable;

/**
 * @author laureduchemin
 *
 */
public class Astuce implements Serializable{
	
	/**
	 * Déclaration des attributs
	 */
	private static final long serialVersionUID = 1L;
	private String nomChat;
	private String pseudoJoueur;
	private String astuce;
	
	public Astuce(){}

	public Astuce(String nomChat, String pseudoJoueur, String astuce) {
		
		this.nomChat = nomChat;
		this.pseudoJoueur = pseudoJoueur;
		this.astuce = astuce;
	}

	public String getNomChat() {
		return nomChat;
	}

	public void setNomChat(String nomChat) {
		this.nomChat = nomChat;
	}

	public String getPseudoJoueur() {
		return pseudoJoueur;
	}

	public void setPseudoJoueur(String pseudoJoueur) {
		this.pseudoJoueur = pseudoJoueur;
	}

	public String getAstuce() {
		return astuce;
	}

	public void setAstuce(String astuce) {
		this.astuce = astuce;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

}
