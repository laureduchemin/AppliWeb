/**
 * 
 */
package com.servlets;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.beans.Chat;
import com.ressources.HibernateUtil;

/**
 * @author laureduchemin
 *
 */
public class PageListeChat extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	public static final String VUE = "/WEB-INF/PageListeChat.jsp";
	
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

    	List<Chat> listeChat = HibernateUtil.listeChat();
    	request.setAttribute("listeChat", listeChat);
    	
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
        
    }



}
