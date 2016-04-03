/**
 * 
 */
package com.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author laureduchemin
 *
 */
public class PageListeChat extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	public static final String VUE = "/WEB-INF/PageListeChat.jsp";
	
    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {

    	

        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
        
    }

}
