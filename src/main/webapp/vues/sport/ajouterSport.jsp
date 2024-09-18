<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sio.paris2024.model.Sport"%>
<%@page import="sio.paris2024.form.FormSport"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PARIS 2024</title>
        <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
        <title>Paris 2024</title>
        <style>
            body {
		padding-top: 50px;
            }
                .special {
		padding-top:50px;
	}
        </style>
    </head>
    <body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <a  href ='../ServletAthlete/lister' class="navbar-brand" href=".">Système de gestion des athlètes</a>
		</div>
            </div>
	</nav>
        <div class="container special">
        <h2 class="h2">Ajouter un Sport</h2>
            <%
                FormSport form = (FormSport)request.getAttribute("form");
            %>
            <form class="form-inline" action="ajouter" method="POST">
                <label for="libelle">Libelle : </label>
                <input id="libelle" type="text" name="libelle"  size="50" maxlength="50">
                </br>                     
                <input type="submit" name="valider" id="valider" value="Valider"/>
            </form>
        </div>
    </body>
</html>