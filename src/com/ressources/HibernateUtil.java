package com.ressources;
import com.beans.*;


import java.util.Iterator;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.ressources.*;

public class HibernateUtil {
	private static final Session session = buildSessionFactory();
    private static Session buildSessionFactory() {
        try {
            // Use hibernate.cfg.xml to get a SessionFactory
        	Configuration configuration = new Configuration().configure("com/ressources/hibernate.cfg.xml");
            return configuration.buildSessionFactory().openSession();
        } catch (Throwable ex) {
            System.err.println("SessionFactory creation failed." + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    public static Session getSessionFactory() {
        return session;
    }
    public static void shutdown() {
        getSessionFactory().close();
    }
    public static List<Chat> listeChat(){
        Query query = session.createQuery("from Chat");
        List<Chat> listeChat = query.list();
		return listeChat;
    }
    public static Chat getChat(String nom){
    	List<Chat> listeChat = listeChat();
    	for(Iterator<Chat> it = listeChat.iterator(); it.hasNext(); ){
        	Chat chatProv = it.next();
        	if(chatProv.getNomAnglais().contains(nom)){
        		return chatProv;
        	}
		}
		return null;
    }
    public static void addUtilisateur(Utilisateur utilisateur){
    	Transaction tx = session.beginTransaction();
    	session.save(utilisateur);
    	tx.commit();
    }
    
    
    public static List<Utilisateur> listeUtilisateur(){
    	session.getTransaction().commit();
        Query query = session.createQuery("from Utilisateur");
        List<Utilisateur> listeUtilisateur = query.list();
		return listeUtilisateur;	
    }
    public static Utilisateur getUtilisateur(String nom){
    	List<Utilisateur> listeUtilisateur = listeUtilisateur();
    	for(Iterator<Utilisateur> it = listeUtilisateur.iterator(); it.hasNext(); ){
        	Utilisateur utilisateurProv = it.next();
        	if(utilisateurProv.getPseudo() == nom){
        		return utilisateurProv;
        	}
		}
		return null;
    }
    public static List<Astuce> listeAstuce(){
    	session.getTransaction().commit();
        Query query = session.createQuery("from Astuce");
        List<Astuce> listeAstuce = query.list();
		return listeAstuce;
    }
    public static Astuce getAstuce(String astuce){
    	List<Astuce> listeAstuce = listeAstuce();
    	for(Iterator<Astuce> it = listeAstuce.iterator(); it.hasNext(); ){
        	Astuce astuceProv = it.next();
        	if(astuceProv.getAstuce() == astuce){
        		return astuceProv;
        	}
		}
		return null;
    }
}
