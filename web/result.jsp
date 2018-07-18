<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<html>
<head>
    <title>result</title>
</head>
<body>
<%
    String email = request.getParameter("email");
    String password = request.getParameter("password");

    Connection conn;
    PreparedStatement pstm;

    try {
        Class.forName("org.postgresql.Driver");
        conn = DriverManager.getConnection("jdbc:postgresql://localhost:5432/calc", "postgres", "postgres");
        pstm = conn.prepareStatement("INSERT INTO users (email,password) VALUES (?,?)");

        pstm.setString(1, email);
        pstm.setString(2, password);
        pstm.executeUpdate();
        pstm.close();


    } catch (Exception e) {
        System.out.println(e);

    }
%>
</body>
</html>
