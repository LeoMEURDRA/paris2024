<%-- 
    Document   : listerAthletes
    Created on : 14 août 2024, 12:27:51
    Author     : zakina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sio.paris2024.model.Sport"%>
<%@page import="sio.paris2024.model.Athlete"%>
<%@page import="java.util.ArrayList"%>

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
            <%
                Sport s = (Sport)request.getAttribute("sSport");
                ArrayList<Athlete> lesAthletes = (ArrayList<Athlete>)request.getAttribute("aLesAthletes");
            %>
            <h2 class="h2"><%  out.println(s.getLibelle());%></h2>
            <h3>Athlètes pratiquant ce sport :</h3>
            <table class="table table-striped table-sm">  
                <thead>
                    <tr>             
                        <th>ID</th>
                        <th>Nom</th>     
                        <th>Prénom</th>         
                    </tr>
                </thead>
                <tbody>
                    <% if (lesAthletes != null) { for (Athlete a : lesAthletes) { %>
                        <tr>           
                            <td>
                                <%out.println(a.getId());%>
                            </td>
                            <td><a href='../ServletAthlete/consulter?idAthlete=<%= a.getId() %>'>
                                <%out.println(a.getNom());%>
                            </a></td>  
                            <td>
                                <%out.println(a.getPrenom());%>
                            </td>    
                        </tr>
                    <%}}%>
                </tbody>
            </table>
        </div>
    </body>   
</html>
