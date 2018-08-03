<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>
<style>
    body, html {
        height: 100%;
        font-family: Arial, Helvetica, sans-serif;
    }

    * {
        box-sizing: border-box;
    }

    .bg-img {
        /* The image used */
        background-image: url("images/homeCalc.jpg");

        min-height: 100%;

        /* Center and scale the image nicely */
        background-position: center center;
        background-repeat: no-repeat;
        background-size: 100% 100%;
    }

    /* Add styles to the form container */
    .container {
        position: absolute;
        right: 35%;
        top: 20%;
        margin: 20px;
        max-width: 300px;
        padding: 16px;
        background-color: white;
    }

    /* Full-width input fields */
    input[type=text], input[type=password] {
        width: 10%;
        padding: 15px;
        margin: 5px 0 22px 0;
        border: none;
        background: #f1f1f1;
    }

    input[type=text]:focus, input[type=password]:focus {
        background-color: #ddd;
        outline: none;
    }

    /* Set a style for the submit button */
    .btn {
        background-color: #4CAF50;
        color: white;
        padding: 16px 20px;
        border: none;
        cursor: pointer;
        width: 100%;
        opacity: 0.9;
    }

    .btn:hover {
        opacity: 1;
    }

    table {

    }

    th, td {

        min-width: auto;
    }


</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<%@ include file="header/header.jsp" %>
<%@ include file="nav/nav.jsp" %>

    <div class="w3-col l10 m12" id="main" style="overflow-x: scroll" contenteditable="true">
        <table class="w3-table-all">
            <thead>
            <tr class="w3-green">
                <th>Year/Month</th>
                <th>Jedzenie</th>
                <th>AGD</th>
                <th>Taca</th>
                <th>Bilety</th>
                <th>Inne</th>
                <th>Rozrywka</th>
                <th>Fryzjer</th>
                <th>Kolęda</th>
                <th>Kredyt</th>
                <th>Telefon</th>
                <th>Dieta</th>
                <th>Sport</th>
                <th>Pokój</th>
                <th>Prezenty</th>
                <th>KKM</th>
                <th>Internet</th>
                <th>Jałmużna</th>
                <th>Dziesięcina</th>
                <th>Śr. Czystości</th>
                <th>Leki</th>
            </tr>
            <tr>
                <td>2018/08</td>
                <td>562,26</td>
                <td>262,02</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
                <td>2</td>
            </tr>

            </thead>
        </table>
    </div>
<%--</div>--%>
<%--<form action="/CreateTable" method="post">--%>

<%--<input type="text" name="name" placeholder="your output">--%>
<%--<button type="submit" value="Enter">Button</button>--%>

<%--</form>--%>
<%@ include file="footer/footer.jsp" %>
</body>
</html>
