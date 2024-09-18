<%-- 
    Document   : listerAthletes
    Created on : 14 août 2024, 12:27:51
    Author     : zakina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="sio.paris2024.model.Athlete"%>
<%@page import="sio.paris2024.model.Pays"%>
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
                Athlete a = (Athlete)request.getAttribute("pAthlete");
            %>
            <h2 class="h2"><%  out.println(a.getNom());%></h2>
            <table class="table table-striped table-sm"> 
                <thead>
                    <tr>             
                        <th>ID</th>
                        <th>Prénom</th>   
                        <th>Date de naissance</th>               
                        <th>Pays</th>                
                    </tr>
                </thead>
                <tbody>
                    <tr>           
                        <td>
                            <%out.println(a.getId());%>
                        </td>
                        <td>
                            <%out.println(a.getPrenom());%>
                        </td>    
                        <td>
                            <%out.println(a.getDateNaiss());%>
                        </td>
                        <td>
                            <%out.println(a.getPays().getNom());%>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </body>
</html>
