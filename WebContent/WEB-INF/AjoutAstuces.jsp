<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ajouter une astuce</title>
</head>
<body>

<div id="bandeau"><p align="center"><font size="3" face="cursive" color="black"><b>Astuces Neko Atsume</b></font></p></div>

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

<form method="post" action="connexion">
            <fieldset>
<legend>Ajouter une astuce</legend>
                <p>Vous pouvez vous ajouter via ce formulaire.</p>

                <label for="pseudo">Pseudo <span class="requis">*</span></label>
                <input type="text" id="email" name="pseudo" value="" size="20" maxlength="60" />
                <br />

                <label for="nomanglais">Nom anglais du chat <span class="requis">*</span></label>
                <input type="text" id="nomanglais" name="nomanglais" value="" size="20" maxlength="20" />
                <br />
                
                <label for="astuce">Astuce <span class="requis">*</span></label>
                <input type="text" id="astuce" name="astuce" value="" size="20" maxlength="20" />
                <br />

                <input type="submit" value="Ajouter" class="sansLabel" />
                <br />
                
                <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
            </fieldset>
        </form>





</div>

</body>
</html>