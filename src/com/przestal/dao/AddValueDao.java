package com.przestal.dao;

import com.przestal.bean.AddValueBean;
import com.przestal.bean.SumValueBean;
import com.przestal.db.DBConnection;

import java.sql.*;

public class AddValueDao {

    Connection connection = null;
    Statement statement = null;
    PreparedStatement preparedStatement = null;
    ResultSet resultSet = null;
    Double result = null;
    public void addValueToTableDB(AddValueBean addValueBean) {

        try {
            connection = DBConnection.createConnection();
            statement = connection.createStatement();
            preparedStatement = connection.prepareStatement("INSERT INTO costsvalue(food) VALUES (?)");
            preparedStatement.setString(1, addValueBean.getValue());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }

    }
    public Double getSumOfColumnValues(SumValueBean sumValueBean) {

        try {
            connection = DBConnection.createConnection();
            statement = connection.createStatement();
            resultSet = statement.executeQuery("SELECT SUM (CAST (food AS DOUBLE PRECISION )) FROM costsvalue;");
            while (resultSet.next()){
                result = resultSet.getDouble(1);
                statement = connection.createStatement();
                preparedStatement= connection.prepareStatement("UPDATE sumvalue SET food =  "+result+";");
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
