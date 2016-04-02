/**
 * 
 */
package com.beans;

import java.io.Serializable;

/**
 * @author laureduchemin
 *
 *Classe Chat qui représente le modèle de donnée de la table chat
 *
 */
public class Chat implements Serializable{
	
	/**
	 * Déclaration des attributs
	 */
	private static final long serialVersionUID = 1L;
	private String nomAnglais;
	private String nomJaponais;
	private String personnalite;
	private String niveau;
	private String caracteristiques;
	private String tresor;
	private String tresorDescription;
	private String photo;
	
	public Chat(){}

	public Chat(String nomAnglais, String nomJaponais, String personnalite, String niveau, String caracteristiques,
			String tresor, String tresorDescription, String photo) {
		
		this.nomAnglais = nomAnglais;
		this.nomJaponais = nomJaponais;
		this.personnalite = personnalite;
		this.niveau = niveau;
		this.caracteristiques = caracteristiques;
		this.tresor = tresor;
		this.tresorDescription = tresorDescription;
		this.photo = photo;
	}

	public String getNomAnglais() {
		return nomAnglais;
	}

	public void setNomAnglais(String nomAnglais) {
		this.nomAnglais = nomAnglais;
	}

	public String getNomJaponais() {
		return nomJaponais;
	}

	public void setNomJaponais(String nomJaponais) {
		this.nomJaponais = nomJaponais;
	}

	public String getPersonnalite() {
		return personnalite;
	}

	public void setPersonnalite(String personnalite) {
		this.personnalite = personnalite;
	}

	public String getNiveau() {
		return niveau;
	}

	public void setNiveau(String niveau) {
		this.niveau = niveau;
	}

	public String getCaracteristiques() {
		return caracteristiques;
	}

	public void setCaracteristiques(String caracteristiques) {
		this.caracteristiques = caracteristiques;
	}

	public String getTresor() {
		return tresor;
	}

	public void setTresor(String tresor) {
		this.tresor = tresor;
	}

	public String getTresorDescription() {
		return tresorDescription;
	}

	public void setTresorDescription(String tresorDescription) {
		this.tresorDescription = tresorDescription;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

}
