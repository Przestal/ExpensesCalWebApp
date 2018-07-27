package com.przestal.dao;

import com.przestal.bean.RegisterBean;
import com.przestal.util.DBConnection;

import java.sql.*;

public class RegisterDao {


    public String createUserIfNotExist(RegisterBean registerBean) {

        String email = registerBean.getEmail();
        String password = registerBean.getPassword();

        Connection connection = null;
        Statement statement = null;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;

        String emailDB = "";
        String passwordDB = "";

        try {
            connection = DBConnection.createConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT * FROM users");

            while (resultSet.next()){
                emailDB = resultSet.getString("email");

                if (!emailDB.equals(email)){
                    preparedStatement= connection.prepareStatement("INSERT INTO calc.public.users (email, password) VALUES (?,?)");

                    preparedStatement.setString(1,email);
                    preparedStatement.setString(2,password);
                    preparedStatement.executeUpdate();
                    preparedStatement.close();
                     return "SUCCESS";
                }else {
                    return "FAILED";
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }


        return "bad som";
    }


}
