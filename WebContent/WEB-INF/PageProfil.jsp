<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profil</title>
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
   <li><A HREF="http://localhost:8080/AppliWeb/AjoutAstuces">Ajouter une astuce</A></li>
 <li><A HREF="http://localhost:8080/AppliWeb/PageConnexion">Connexion</A></li>
</ul> 
</font>
</div>

<div id="contenu">

<font size= 4 face="cursive"> Profil </font><br>
<br>

<table border=1 cellpadding=3 cellspacing=1>
<tr>
<td>Pseudo</td>
<td>Affichage Pseudo</td>
</tr>

<tr>
<td>Email</td>
<td>Affichage email</td>
</tr>

<tr>
<td>Mot de passe</td>
<td>étoile pour mdp crypté</td>
</tr>

</table>

<A HREF="http://localhost:8080/AppliWeb/PageEditProfil">Editer profil</A><br>

 <div id="piedpage"></div>

</div>

</body>
</html>