/**
 * 
 */
package com.beans;

import java.io.Serializable;

/**
 * @author laureduchemin
 *
 */
public class Vote implements Serializable{
	
	/**
	 * Déclaration des attributs
	 */
	private static final long serialVersionUID = 1L;
	private String pseudo;
	private String astuce;

	public Vote(){}

	public Vote(String pseudo, String astuce) {
		
		this.pseudo = pseudo;
		this.astuce = astuce;
	}

	public String getPseudo() {
		return pseudo;
	}

	public void setPseudo(String pseudo) {
		this.pseudo = pseudo;
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
