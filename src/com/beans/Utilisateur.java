/**
 * 
 */
package com.beans;

import java.io.Serializable;

/**
 * @author laureduchemin
 * 
 * Classe Utilisateur qui représente le modèle de donnée de la table utilisateur
 *
 */
public class Utilisateur implements Serializable{
	
	/**
	 * Déclaration des attributs
	 */
	private static final long serialVersionUID = 1L;
	private String pseudo;
	private String mdp;
	private String type_utilisateur;
	private String email;
	private boolean banni;
	
	public Utilisateur(){}
	
	public Utilisateur(String pseudo, String mdp, String type_utilisateur, String email, boolean banni) {
		
		this.pseudo = pseudo;
		this.mdp = mdp;
		this.type_utilisateur = type_utilisateur;
		this.email = email;
		this.banni = banni;
	}
	
	public String getPseudo() {
		return pseudo;
	}
	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
	}
	public String getMdp() {
		return mdp;
	}
	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	public String getType_utilisateur() {
		return type_utilisateur;
	}
	public void setType_utilisateur(String type_utilisateur) {
		this.type_utilisateur = type_utilisateur;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public boolean isBanni() {
		return banni;
	}
	public void setBanni(boolean banni) {
		this.banni = banni;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}	

}
