<%@ page import="bean.Emploi" %>
<%--Created by IntelliJ IDEA.
  User: raedr
  Date: 20/05/2021
  Time: 22:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>ajout</title>
</head>
<body>
<a href="index.jsp">accueil</a>
<form action="ajout.jsp" method="post">
    <table border="1" >
        <tr>
            <th colspan="2">Ajouter un cours</th>
        </tr>
        <tr>
            <th>intitule</th>
            <td><input type="text" name="intitule"></td>
        </tr><tr>
            <th>intervenant</th>
            <td><input type="text" name="intervenant"></td>
        </tr><tr>
            <th>duree</th>
            <td><input type="text" name="duree"></td>
        </tr> </tr><tr>
            <th>dates</th>
            <td><input type="date" name="dates"></td>
        </tr>
        <tr>
            <td colspan="2"><button type="submit">Ajouter<button type="reset" name="reset">Reset</button></button></td>
        </tr>

    </table>
</form>
<jsp:useBean id="C" class="bean.cours">
    <jsp:setProperty name="C" property="*" />
</jsp:useBean>

<%
    Emploi.insert(C);
%>
</body>
</html>
