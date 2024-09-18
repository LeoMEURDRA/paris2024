<%-- 
    Document   : ajouterPompier
    Created on : 18 mars 2024, 13:30:47
    Author     : zakina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="sio.paris2024.model.Pays"%>
<%@page import="sio.paris2024.model.Athlete"%>
<%@page import="sio.paris2024.form.FormAthlete"%>
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
        <h2 class="h2">Ajouter un Athlète</h2>
            <%
                FormAthlete form = (FormAthlete)request.getAttribute("form");
            %>
            <form class="form-inline" action="ajouter" method="POST">
                    <label for="nom">Nom : </label>
                    <input id="nom" type="text" name="nom" size="30" maxlength="30">
                    </br>

                    <%-- Champ Liste des pays --%>
                    <label for="pays">Pays : </label>
                    <select name="idPays">
                        <%
                            ArrayList<Pays> lesPays= (ArrayList)request.getAttribute("pLesPays");
                            for (int i=0; i<lesPays.size();i++){
                                Pays p = lesPays.get(i);
                                out.println("<option value='" + p.getId()+"'>" + p.getNom()+"</option>" );
                            }
                        %>
                    </select>
                    </br>     
                <input type="submit" name="valider" id="valider" value="Valider"/>
            </form>
        </div>
    </body>
</html>