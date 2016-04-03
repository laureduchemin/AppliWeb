<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    %>
    <%@page import="java.util.List"%>
    <%@page import="java.util.Iterator"%>
    <%@page import="com.beans.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Liste des chats</title>
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

<font size= 4 face="cursive"> Liste des chats </font><br>
<br>
<%
List<Chat> listeChat = (List<Chat>) request.getAttribute("listeChat");
for(Iterator<Chat> it = listeChat.iterator(); it.hasNext(); ){
	Chat chat = it.next();
	out.print("<fieldset><table><tr><td> Nom Anglais </td><td><A HREF = http://localhost:8080/AppliWeb/" + chat.getNomAnglais() + ">" + chat.getNomAnglais() + " </A></td></tr>");

			
	out.print("</table></fieldset>");
}
 %>

 <div id="piedpage"></div>

</body>
</html>