<%--
  Created by IntelliJ IDEA.
  User: przemyslaw
  Date: 13.07.18
  Time: 09:27
  To change this template use File | Settings | File Templates.
--%>
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
        width: 100%;
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
</style>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/3/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<body>

<form action="Login" method="post">
    <nav class="w3-bar w3-black">
        <a href="/home.jsp" class="w3-button w3-bar-item">Home</a>
        <a href="/login.jsp" class="w3-button w3-bar-item">Login</a>
        <a href="/register.jsp" class="w3-button w3-bar-item">Register</a>
        <a href="/contact.jsp" class="w3-button w3-bar-item">Contact</a>

        <div class="bg-img">
                <div class="container">
                    <font color="black"><h1>Login</h1></font>


                    <label ><font color="black"><b>Email</b></font></label>
                    <input type="text" placeholder="Enter Email" name="email" required>

                    <label ><font color="black"><b>Password</b></font>
                    </label>
                    <input type="password" placeholder="Enter Password" name="password" required>

                    <button type="submit" class="btn">Login</button>
                    <label>
                        <input type="checkbox" checked="checked" name="remember"><font color="black">Remember me</font>
                    </label>
                </div>

        </div>
        <center>
            <footer class="w3-container w3-padding-64 w3-center w3-black w3-xlarge">
                <a href="#"><i class="fa fa-facebook-official"></i></a>
                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-flickr"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
                <p class="w3-medium">
                    Created by Przemysław Gębala with <a href="https://www.w3schools.com/w3css/default.asp"
                                                         target="_blank">w3.css</a>
                </p>
            </footer>
        </center>
    </nav>
</form>
</body>
</html>
