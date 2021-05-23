<%@ page import="bean.cours" %>
<%@ page import="java.util.List" %>
<%@ page import="bean.Emploi" %><%--
  Created by IntelliJ IDEA.
  User: raedr
  Date: 20/05/2021
  Time: 15:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Affichage</title>
</head>
<body>
<a href="index.jsp">accueil</a>
<table border="1" width="80%">
    <tr>
        <th colspan="4">Liste des cours</th>
    </tr>
    <%

        List<cours> listAllCours= Emploi.getAllCours();
        request.setAttribute("listAllCours",listAllCours);
        List<cours> listCours= Emploi.getCours();
        request.setAttribute("listCours",listCours);
    %>
    <tr>
        <th>intitule</th>
        <th>intervenant</th>
        <th>duree </th>
        <th>dates</th>
    </tr>
    <%int i = 0;%>
    <c:forEach items="${listCours}" var="c">
        <tr>
        <td>${c.intitule}</td>
        <td>${c.intervenant}</td>
        <td>${c.duree}</td>
            <%
            if (i <= listAllCours.size()) {
                cours date = listAllCours.get(i);
                List<cours> listDates = Emploi.getDates(date);
                request.setAttribute("listDates", listDates);
                i++;
            }
            %>
            <td>

                    <ul>
                        <c:forEach items="${listDates}" var="d">
                        <li>${d.dates}</li>
                        </c:forEach>
                    </ul>

            </td>
    </tr>
    </c:forEach>

</table>
</body>
</html>
