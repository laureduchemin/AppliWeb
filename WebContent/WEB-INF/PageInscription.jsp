<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title> Page Inscription </title>
<link type="text/css" rel="stylesheet" href="form.css" />
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
 <li><A HREF="http://localhost:8080/AppliWeb/PageConnexion">Connexion</A></li>
</ul> 
</font>
</div>

<div id="contenu">
<form method="post" action="inscription">
            <fieldset>
                <legend>Inscription</legend>
                <p>Vous pouvez vous inscrire via ce formulaire.</p>
                
                <label for="pseudo">Pseudo <span class="requis">*</span></label>
                <input type="text" id="pseudo" name="pseudo" value="" size="20" maxlength="20" />
                <br />

                <label for="email">Adresse email <span class="requis">*</span></label>
                <input type="text" id="email" name="email" value="" size="20" maxlength="60" />
                <br />

                <label for="motdepasse">Mot de passe <span class="requis">*</span></label>
                <input type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
                <br />

                <label for="confirmation">Confirmation du mot de passe <span class="requis">*</span></label>
                <input type="password" id="confirmation" name="confirmation" value="" size="20" maxlength="20" />
                <br />

                <input type="submit" value="Inscription" class="sansLabel" />
                <br />
            </fieldset>
        </form>
        </div>
        <div id="piedpage"></div>

</body>
</html>