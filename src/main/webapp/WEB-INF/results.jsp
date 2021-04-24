<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%--
  Created by IntelliJ IDEA.
  User: mykhailechko
  Date: 24.04.2021
  Time: 16:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Опитування!!!</title>
    <style>
        .blue-button{
            background: #25A6E1;
            padding:3px 5px;
            color:#fff;
            font-family:'Helvetica Neue',sans-serif;
            font-size:12px;
            border-radius:2px;
            -moz-border-radius:2px;
            -webkit-border-radius:4px;
            border:1px solid #1A87B9
        }
        table {
            font-family: "Helvetica Neue", Helvetica, sans-serif;
            font-size: smaller;

        }
        th {
            background:  crimson;
            color: white;
        }
        td,th{
            border: 1px solid gray;

            text-align: left;
            padding: 5px 10px;
        }
        .text {
            text-align:  center;
        }
        h1 {
            color: red;
        }
    </style>
</head>
<body>
<c:if test="${!empty listOfVotes}">
    <table class="tg">
        <tr>
            <th width="20">Id</th>
            <th width="220">Прізвище ім'я по-батькові</th>
            <th width="80">Дата народження</th>
            <th width="20">Результат</th>
        </tr>
        <c:forEach items="${listOfVotes}" var="vote">
            <tr>
                <td>${vote.id}</td>
                <td>${vote.pib}</td>
                <td>${vote.birth}</td>
                <td>${vote.question1}</td>
            </tr>
        </c:forEach>
    </table>
</c:if>
</body>
</html>
