<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
            width: 50%;
        }
        th {
            background: SteelBlue;
            color: white;
        }
        td,th{
            border: 1px solid gray;
            width: 25%;
            text-align: left;
            padding: 5px 10px;
        }
        .text {
            text-align:  center;
        }
    </style>
</head>
<body>

<div class="text">
    <img src="https://accordbank.com.ua/static/images/logo.svg">
</div>
<h1 class="text">Опитування!!!</h1>
<br>

    <form:form action="save" method="POST" modelAttribute="voting" >
    <h3>Питання1: як ви оцінюєте корпоративну вечірку?</h3>
    <form:select path="question1">
        <form:option value="NONE">Оберіть відповідь</form:option>
        <form:option value="1(погано)">1(погано)</form:option>
        <form:option value="2">2</form:option>
        <form:option value="3">3</form:option>
        <form:option value="4">4</form:option>
        <form:option value="5">5</form:option>
        <form:option value="6">6</form:option>
        <form:option value="7">7</form:option>
        <form:option value="8">8</form:option>
        <form:option value="9">9</form:option>
        <form:option value="10(просто феєрично)">10(просто феєрично)</form:option>
    </form:select>

    <br>
    <br>
    <h3>Питання2: чи плануєте ви працювати в Акордбанку протягом наступних 365 днів?</h3>
        <form:select path="question2">
            <form:option value="NONE">Оберіть відповідь</form:option>
            <form:option value="Так">Так</form:option>
            <form:option value="Ні">Ні</form:option>
            <form:option value="Завжди розглядаю інші варіанти">Завжди розглядаю інші варіанти</form:option>
        </form:select>
    <br>
    <br>
    <br>
    <input type="submit" value="Проголосувати">
    </form:form>
</body>

<script>
    function myFunction() {

        let r = confirm("Підтвердіть ваш вибір!");
        if (r === true) {

            let xhttp = new XMLHttpRequest();
            xhttp.open("GET", "https://api.ipify.org/?format=json", true);
            xhttp.send();
            xhttp.onreadystatechange = function () {
                if (this.readyState === 4 && this.status === 200) {
                    let ip = JSON.parse(this.responseText).ip;
                    alert(ip);
                }
            };

            alert("Дякуємо! Ваш голос зараховано!");

        }
        else{
            alert("Будь ласка пройдіть опитування ще раз!");
        }

    }
</script>

</html>