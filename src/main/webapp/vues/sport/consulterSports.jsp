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
    </head>
    <body>
        <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PARIS 2024</title>
    </head>
    <body>
        <%
            Sport s = (Sport)request.getAttribute("sSport");
            ArrayList<Athlete> lesAthletes = (ArrayList<Athlete>)request.getAttribute("aLesAthletes");
        %>
        <h1><%  out.println(s.getLibelle());%></h1>
        <h2>Athlètes pratiquant ce sport :</h2>
        <% if (lesAthletes != null) {
            for (Athlete a : lesAthletes) { %>
                <table border="1">
                    <tr>
                        <th>Nom</th>
                        <th>Prénom</th>
                        <th>Date de Naissance</th>
                    </tr>
                    <tr>
                        <td><a href='../ServletAthlete/consulter?idAthlete=<%= a.getId() %>'><%= a.getNom() %></a></td>
                        <td><%= a.getPrenom() %></td>
                        <td><%= a.getDateNaiss() %></td>
                    </tr>
                </table>
        <%}}%>
    </body>   
</html>
