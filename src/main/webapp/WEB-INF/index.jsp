<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html>
<head>

    <title>Конкурс</title>

    <meta charset="utf-8" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2-bootstrap-css/1.4.6/select2-bootstrap.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/css/select2.min.css" rel="stylesheet" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.4/js/select2.min.js"></script>

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
            text-align: center;
        }
        h1,h2,h3{
            color: red;
        }

        .center-justified {
            text-align: justify;
            margin: 0 auto;
            width: 60em;
            font-size: small;
        }

        body {
            /* 	font-family: 'Ubuntu', sans-serif; */
            /*font-weight: bold;*/
        }
        .select2-container {
            min-width: 800px;
        }

        .select2-results__option {
            padding-right: 20px;
            vertical-align: middle;
        }
        .select2-results__option:before {
            content: "";
            display: inline-block;
            position: relative;
            height: 20px;
            width: 20px;
            border: 2px solid #e9e9e9;
            border-radius: 4px;
            background-color: #fff;
            margin-right: 20px;
            vertical-align: middle;
        }
        .select2-results__option[aria-selected=true]:before {
            font-family:fontAwesome;
            content: "\f00c";
            color: #fff;
            background-color: red;
            border: 0;
            display: inline-block;
            padding-left: 3px;
        }


        .select2-container--default .select2-results__option[aria-selected=true] {
            background-color: #fff;
        }
        .select2-container--default .select2-results__option--highlighted[aria-selected] {
            background-color: #eaeaeb;
            color: #272727;
        }
        .select2-container--default .select2-selection--multiple {
            margin-bottom: 10px;
        }
        .select2-container--default.select2-container--open.select2-container--below .select2-selection--multiple {
            border-radius: 4px;
        }

        .select2-container--default.select2-container--focus .select2-selection--multiple {
            border-color: red;
            border-width: 2px;
        }

        .select2-container--open .select2-dropdown--below {

            border-radius: 6px;
            box-shadow: 0 0 10px rgba(0,0,0,0.5);

        }
        .select2-selection .select2-selection--multiple:after {
            content: 'hhghgh';
        }

        /* select with icons badges single*/
        .select-icon .select2-selection__placeholder .badge {
            display: none;
        }

        .select-icon .placeholder {
            /* 	display: none; */
        }
        .select-icon .select2-results__option:before,
        .select-icon .select2-results__option[aria-selected=true]:before {
            display: none !important;
            /* content: "" !important; */
        }
        .select-icon  .select2-search--dropdown {
            display: none;
        }

    </style>
</head>
<body>

<div class="text">
    <img class="text" src="data:image/svg+xml;base64,PHN2ZyBpZD0ibC11LWciIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHg9IjBweCIgeT0iMHB4IiB3aWR0aD0iMTg3LjdweCIgaGVpZ2h0PSI0NC44cHgiIHZpZXdCb3g9IjAgMCAxODcuNyA0NC44IiBzdHlsZT0iZW5hYmxlLWJhY2tncm91bmQ6bmV3IDAgMCAxODcuNyA0NC44OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+DQo8c3R5bGUgdHlwZT0idGV4dC9jc3MiPg0KCS5zdDB7ZmlsbC1ydWxlOmV2ZW5vZGQ7Y2xpcC1ydWxlOmV2ZW5vZGQ7ZmlsbDojQ0MwMDAwO30NCgkuc3Qxe2ZpbGwtcnVsZTpldmVub2RkO2NsaXAtcnVsZTpldmVub2RkO2ZpbGw6Izk5OTk5OTt9DQo8L3N0eWxlPg0KPHBhdGggY2xhc3M9InN0MCIgZD0iTTQzLjYsMjcuNUwyMi4xLDlMMC42LDI3LjVDMC4yLDI1LjgsMCwyNC4yLDAsMjIuNEMwLDEwLDkuOSwwLDIyLjEsMGMxMi4yLDAsMjIuMSwxMCwyMi4xLDIyLjQgQzQ0LjIsMjQuMiw0NCwyNS44LDQzLjYsMjcuNSBNMTAxLDM1LjFjMy41LDAsNS4yLTAuMiw2LjQtMC41YzIuNC0wLjcsNC0yLjMsNC44LTQuOGMwLjMtMC44LDAuNC0xLjUsMC40LTIuMiBjMC0yLjMtMC45LTQuNC0yLjYtNS45Yy0xLjYtMS40LTMuNi0yLTYtMmgtNC4xYy0wLjUsMC4xLTEsMC4zLTEuMiwwLjdjLTAuMiwwLjQtMC40LDAuOC0wLjUsMS4zdjE5LjZoMi44VjM1LjEgTTEwOC4yLDIyLjggYzAuOCwxLjMsMS4zLDMuMSwxLjMsNC45YzAsMS43LTAuNCwzLjEtMS4zLDQuNGMtMSwxLjQtMi4zLDIuMS0zLjksMi4xbC0zLjMsMFYyMS4xYzAtMC4zLDAuMi0wLjUsMC41LTAuNWwyLjcsMCBDMTA1LjksMjAuNSwxMDcuMywyMS4zLDEwOC4yLDIyLjh6IE04OC4yLDM1LjVjMi4zLDAsNC4yLTAuNyw1LjctMi4yYzEuNS0xLjUsMi4zLTMuNCwyLjMtNS44YzAtMi4zLTAuOC00LjItMi4zLTUuNiBjLTEuNS0xLjUtMy40LTIuMi01LjYtMi4yYy0yLjMsMC00LjIsMC43LTUuNiwyLjJjLTEuNSwxLjUtMi4yLDMuNC0yLjIsNS43YzAsMi4zLDAuNyw0LjIsMi4zLDUuN0M4NC4xLDM0LjgsODYsMzUuNSw4OC4yLDM1LjUgTTkyLjMsMzIuMWMtMSwxLjctMi4zLDIuNi00LDIuNmMtMS43LDAtMy0wLjgtNC0yLjNDODMuNSwzMSw4MywyOS40LDgzLDI3LjZjMC0xLjksMC40LTMuNSwxLjItNC45YzEtMS42LDIuMy0yLjQsNC0yLjQgYzEuNiwwLDIuOSwwLjcsMy45LDIuMmMwLjksMS4zLDEuMywyLjksMS4zLDQuNkM5My41LDI5LjEsOTMuMSwzMC43LDkyLjMsMzIuMXogTTcyLjgsMjQuNmw1LjUtNWgtMS4ybC02LjcsNi4xdi02LjFoLTIuOHYxNS41IGwyLjgtMC4xdi04LjJsMC41LTAuNWw2LjksOC44aDMuMUw3Mi44LDI0LjZ6IE01Ni4yLDEzbC05LjgsMjIuMWgxbDIuOC02LjNoMTBsMi44LDYuM2gzTDU2LjIsMTN6IE01MC43LDI3LjlsNC42LTEwLjNsNC41LDEwLjMgSDUwLjd6IE0xMTQuNSwzNC4ybDUtMTIuM2MwLjEtMC4yLDAuMy0wLjQsMC41LDBjMS42LDQsMy4zLDguMyw0LjksMTIuM0gxMTQuNXogTTExMi4xLDMzLjljMCwwLjUsMC4xLDAuOCwwLjEsMWMwLDAuNiwwLDEtMC4xLDEuMiBoMC4yYzAuMy0wLjMsMC42LTAuNSwxLjEtMC43YzAuNC0wLjEsMC45LTAuMiwxLjUtMC4zYzAuNiwwLDEuNCwwLDIuNSwwaDUuOGMxLjEsMCwyLjYsMCwzLjIsMGMwLjUsMCwxLDAuMSwxLjQsMC4zIGMwLjQsMC4xLDAuNywwLjQsMC45LDAuN2gwLjJjMC0wLjMtMC4xLTAuNy0wLjEtMS4yYzAtMC40LDAtMC43LDAuMS0xaC0xbC01LjUtMTMuMWMtMC4xLTAuMy0wLjMtMC42LTAuNS0wLjggCWMtMC4yLTAuMi0wLjQtMC40LTAuNi0wLjVjLTAuNS0wLjItMC45LTAuMi0xLjQsMGMtMC4yLDAuMS0wLjMsMC4yLTAuNSwwLjRjLTAuMiwwLjItMC4zLDAuNC0wLjUsMC42bC01LjgsMTMuM0gxMTIuMXoiLz4NCjxwYXRoIGNsYXNzPSJzdDEiIGQ9Ik01LjQsMzcuMWwxNi43LTIzbDE2LjcsMjNjLTQuMSw0LjctMTAsNy43LTE2LjcsNy43QzE1LjQsNDQuOCw5LjQsNDEuOCw1LjQsMzcuMSBNMTcyLDE5LjZoLTIuOHY2LjRoLTguMXYtNi40IGgtMi44djE1LjVoMi44di04LjJoOC4xdjguMmgyLjhWMTkuNnogTTE1Mi4xLDIxTDE1Mi4xLDIxYy0wLjItMC40LTAuNC0wLjctMC42LTAuOWMtMC4yLTAuMi0wLjUtMC40LTAuNy0wLjVjLTAuNC0wLjEtMC43LTAuMS0xLjEsMGMtMC4yLDAuMS0wLjQsMC4yLTAuNiwwLjRjLTAuNCwwLjQtMC42LDAuOS0wLjgsMS41bC00LjUsMTMuNmgxLjFsMS4yLTMuN2g2LjhsMS4yLDMuN2gyLjdMMTUyLjEsMjF6ICBNMTQ2LjQsMzAuNGMxLTMsMi02LDMtOWMwLTAuMSwwLjItMC4zLDAuMywwbDIuOCw5SDE0Ni40eiBNMTMxLDIxLjdjMC4xLTAuNSwwLjItMC45LDAuNS0xLjNjMC4zLTAuNSwwLjgtMC43LDEuNC0wLjhsNy44LDB2MC45IGMtMi4yLDAtNC40LDAtNi42LDBjLTAuMiwwLTAuMywwLjEtMC4zLDAuNGwwLDUuNmMwLjIsMCwwLjYsMCwxLjIsMGMwLjUsMCwwLjksMCwxLjIsMGMyLDAsMy41LDAuMiw0LjUsMC43IGMxLjUsMC43LDIuMiwxLjksMi4yLDMuN2MwLDEuMy0wLjUsMi40LTEuNiwzLjJjLTEsMC43LTIuMSwxLjEtMy41LDEuMUgxMzFWMjEuOEMxMzEsMjEuOCwxMzEsMjEuNywxMzEsMjEuN0wxMzEsMjEuNyBNMTM2LjksMjcuNSBjMSwwLDEuOSwwLjMsMi42LDAuOWMwLjcsMC42LDEuMSwxLjQsMS4xLDIuNGMwLDEtMC40LDEuOC0xLjEsMi40Yy0wLjcsMC42LTEuNiwwLjktMi42LDAuOWgtM3YtNi42SDEzNi45eiBNMTc5LjcsMjQuNmw1LjUtNSBsLTEuMiwwbC02LjcsNnYtNi4xaC0yLjh2MTUuNWwyLjgtMC4xdi04LjJsMC41LTAuNWw2LjksOC44aDMuMUwxNzkuNywyNC42eiIvPg0KPC9zdmc+">
</div>
<%--<h5 class="text">Created by Nazar Mykhailechko</h5>
<br>--%>

<h3 class="text">ОПТИМІЗАЦІЯ 2021</h3>

<%--<% String homeDirectory = System.getProperty("user.name"); %>--%>
<%--<h3 class="text"><%=homeDirectory%></h3>--%>
<div class="center-justified">
    <p><strong>Уважаемые коллеги!</strong></p>
    <p>Благодаря Вашим усилиям и стараниям, в 2021 Аккордбанк является одним из самых динамично развивающихся банков в Украине. В частности, по сети отделений Банк вошел в ТОП-15, по активам – в ТОП-25 банков Украины. В текущем году Банк имеет существенные приросты по депозитному портфелю юридических и физических лиц. Растет количество клиентов с гарантиями, мы стали #1 на рынке по обслуживанию нерезидентов, уверенно движемся к цели обогнать Приват и стать #1 по количеству swift платежей частных клиентов. Уровень высоколиквидных активов один из самых высоких по банковской системе.</p>
    <p>Важно сохранить нашу динамику, гибкость, скорость и чувство момента! Но, в условиях появления новых процедур и требований от НБУ, роста количества персонала, объемов транзакций по всем видам операций, нам важно сохранить наши преимущество в скорости обслуживания и сервисной модели для Клиентов, которые проводят у нас обслуживаются и рекомендуют нас другим.</p>
    <p>В связи с этим, нам нужно максимально упрощать процедуры, документооборот, избавляться от процессов ради процессов. И кто как не Вы, работая на местах по своим направлениям, лучше других видите возможности для оптимизации.</p>
    <p>Поэтому я запускаю конкурс - <strong>«ОПТИМИЗАЦИЯ 2021»!</strong></p>
    <p>Ниже по форме, Вы можете присылать свои предложения по улучшению или избавления от ненужных/сложных процессов в Банке. Это могут быть любые идеи и предложения, даже самые, на первый взгляд, нереальные. Где-то Ваш опыт, где-то подсмотрели в другом банке, где -то увидели регуляторную возможность, отправляйте предложения по улучшению.</p>
    <p>Предоставляя предложения, плз, руководствуйтесь только 2-мы критериями:<br>
        1) Как это увеличит прибыль/снизит затраты Банка;<br>
        2) Как это улучшит сервисную модель Банка.</p>
    <p>Я лично буду рассматривать все Ваши идеи и лучшая из них гарантировано буде оценена - <strong>новым iPhone 13!</strong> Будут и другие поощрения в виде денежных призов, для самых активных и идеи которых позволят Банку стать лучше!</p>
    <p>Жду Ваших предложений. Срок – до конца года. Количество предложений – неограниченно.</p>
    <p><strong>С уважением,<br>
        Алексей Руднев</strong></p>
</div>

<%--    <form:form action="save" method="POST" modelAttribute="voting" onsubmit="alert('Дякуємо! Ваш голос зараховано'); false">--%>
    <form:form action="save" method="POST" modelAttribute="voting" id="myform">

        <h5>ПІБ:</h5>
        <form:input id="sel1" path="pib" style="width:20%" placeholder="example"/>

        <h5>Номер відділення або підрозділ ГБ:</h5>
        <form:input id="sel2" path="division" style="width:30%" placeholder="example"/>

        <h5>Короткий опис проблеми/неефективного процесу і шляхи оптимізації:</h5>
        <form:textarea id="sel3" path="txt" style="width:80%" rows="10" placeholder="example"/>

        <%--     <h4><div id="divId"></div></h4>--%>
        <br>
        <br>
    <input type="submit" value="Відправити">
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


    function JSGetSelectedItem1() {

        let dropdownIndex = document.getElementById('sel1').selectedIndex;
        let dropdownValue = document.getElementById('sel1')[dropdownIndex].text;
if (dropdownValue === 'Оберіть відповідь'){

}

        alert(dropdownValue);

    }

    function validateSelects()
    {
        let m = false;

        if ( $('#sel').val() !== '' && $('#sel1').val() !== '' && $('#sel2').val().length !== 0 && $('#sel3').val() !== '' && $('#sel4').val() !== ''){  m=true; }
        else{
        alert("Ви не заповнили всі поля!");
        return false
    }
        alert("Дякуємо! Вашу пропозицію прийнято і буде обов'язково розглянуто!");
        return(m);
    }
    // For the functionality.
    $('#myform').on('submit',function()
    {
        return validateSelects();
    });


    $(".js-select2").select2({
        closeOnSelect : false,
        placeholder : "Оберіть відповідь",
        // allowHtml: true,
        allowClear: true,
        multiple: true
        // tags: true // создает новые опции на лету
    })

    $(".js-select").select2({
        placeholder: "Оберіть відповідь",
        allowClear: true
        // tags: true // создает новые опции на лету
    })
</script>

</html>