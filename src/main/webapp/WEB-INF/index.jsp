<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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
        h1 {
            color: red;
        }
    </style>
</head>
<body>

<div class="text">
    <img src="https://accordbank.com.ua/static/images/logo.svg">
</div>
<h5 class="text">Created by Nazar Mykhailechko</h5>
<br>
<h1 class="text">Опитування!!!</h1>
<br>
<h5 class="text">Шановні колеги, дане опитування проходить серед працівників Акордбанку</h5>
<h5 class="text">з метою формування списку бажаючих для проведення вакцинації від COVID-19,</h5>
<h5 class="text">якщо виникне така можливість в поточному році:</h5>
<br>
    <form:form action="save" method="POST" modelAttribute="voting" onsubmit="alert('Дякуємо! Ваш голос зараховано'); false">
    <h3>Питання 1: Ви готові безкоштовно вакцинуватись акредитованою в Україні вакциною в рамках заявки від Банку?</h3>
    <form:select id="sel" name="sel" path="question1" onChange="JSGetSelectedItem()">
        <form:option value="NONE">Оберіть відповідь</form:option>
        <form:option value="Так">Так</form:option>
        <form:option value="Ні">Ні</form:option>
    </form:select>

     <h4><div id="divId"></div></h4>

    <input type="submit" value="Проголосувати">
    </form:form>


</body>


<script language="javascript">
    function JSGetSelectedItem() {
        let dropdownIndex = document.getElementById('sel').selectedIndex;
        let dropdownValue = document.getElementById('sel')[dropdownIndex].text;
        /*alert("Hello JSCript " + dropdownValue);*/
        if (dropdownValue === 'Так'){
            document.getElementById("divId").innerHTML= dropdownValue + "<h3>Питання 2: Якщо відповідь «Так», то надайти свої дані:</h3><p><label for='firstname'>ПІБ (повна назва): </label><input name='pib'  type='text' required/></p><p><label for='date'>Дата народження: </label><input name='birth' type='date' value='2000-01-01' required/></p>"
        }else{
            document.getElementById("divId").innerHTML=""
        }

    }

</script>
</html>