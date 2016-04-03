<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%@page import="java.util.List"%>
    <%@page import="java.util.Iterator"%>
    <%@page import="com.beans.*"%>
     <%@page import="com.ressources.*"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Page Chat</title>
<link type="text/css" rel="stylesheet" href="form.css" />
</head>
<body>

<div id="bandeau"><p align="center"><font size="5" face="cursive" color="black"><b>Astuces Neko Atsume</b></font></p></div>

<div id="menu">
<font size="4" face="cursive" color="black">
Menu
</font>
<font size="2" face="cursive" color="black">
<ul>
<li><A HREF="http://localhost:8080/AppliWeb/PageAstuces">Accueil</A></li>
 <li><A HREF="http://localhost:8080/AppliWeb/PageListeChat">Liste des chats</A></li>
 <li><A HREF="http://localhost:8080/AppliWeb/PageConnexion">Connexion</A></li>
</ul> 
</font>
</div>

<div id="contenu">

<font size= 4 face="cursive"> Détails chat </font><br>
<br>

<%
	String str = (String)request.getAttribute("nomChat");
List<Chat> listeChat = (List<Chat>) request.getAttribute("listeChat");
for(Iterator<Chat> it = listeChat.iterator(); it.hasNext(); ){
	Chat chat = it.next();
	out.println("<img src=images/" + chat.getNomAnglais().trim() +  ".png>");
	out.println("<fieldset><table><tr><td> Nom Anglais </td><td>" + chat.getNomAnglais() + "</td></tr>");
	out.println("<fieldset><table><tr><td> Nom Japonais </td><td>" + chat.getNomJaponais() + "</td></tr>");
	out.println("<fieldset><table><tr><td> Personnalité </td><td>" + chat.getPersonnalite() + "</td></tr>");
	out.println("<fieldset><table><tr><td> Niveau </td><td>" + chat.getNiveau() + "</td></tr>");
	out.println("<fieldset><table><tr><td> Caractéristiques </td><td>" + chat.getCaracteristiques() + "</td></tr>");
	out.println("<fieldset><table><tr><td> Trésor </td><td>" + chat.getTresor() + "</td></tr>");
	out.println("<fieldset><table><tr><td> Description du trésor </td><td>" + chat.getTresorDescription() + "</td></tr>");
}	
	out.print("</table></fieldset>");

 %>


 <div id="piedpage"></div>

</div>
</body>
</html>