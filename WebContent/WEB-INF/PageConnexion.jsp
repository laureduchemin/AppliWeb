<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Page Connexion</title>
<link type="text/css" rel="stylesheet" href="form.css" />
</head>
<body>

<div id="bandeau"><p align="center"><font size="3" face="cursive" color="black"><b>Astuces Neko Atsume</b></font></p></div>
<div id="menu">Menu</div>
<div id="contenu">

<form method="post" action="connexion">
            <fieldset>
<legend>Connexion</legend>
                <p>Vous pouvez vous connecter via ce formulaire.</p>

                <label for="pseudo">Pseudo <span class="requis">*</span></label>
                <input type="text" id="email" name="pseudo" value="" size="20" maxlength="60" />
                <span class="erreur">${form.erreurs['pseudo']}</span>
                <br />

                <label for="motdepasse">Mot de passe <span class="requis">*</span></label>
                <input type="password" id="motdepasse" name="motdepasse" value="" size="20" maxlength="20" />
                <span class="erreur">${form.erreurs['motdepasse']}</span>
                <br />

                <input type="submit" value="Connexion" class="sansLabel" />
                <br />
                
                <p class="${empty form.erreurs ? 'succes' : 'erreur'}">${form.resultat}</p>
            </fieldset>
        </form>
        </div>
        
        
        <div id="piedpage"></div>

</body>
</html>