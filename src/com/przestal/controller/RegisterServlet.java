package com.przestal.controller;

import com.przestal.bean.RegisterBean;
import com.przestal.dao.RegisterDao;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String passwordRepeat = req.getParameter("psw-repeat");

        if (password.equals(passwordRepeat)) {
            RegisterBean registerBean = new RegisterBean();
            registerBean.setEmail(email);
            registerBean.setPassword(password);
            registerBean.setPasswordRepeat(passwordRepeat);

            RegisterDao registerDao = new RegisterDao();
            String createUsers = registerDao.createUser(registerBean);

            if (createUsers.equals("SUCCESS")) {

                req.getRequestDispatcher("/registerSuccess.jsp").forward(req, resp);
            } else if (createUsers.equals("FAILED")) {
            // TODO create registerFailed.jsp in case: email already exist

                req.getRequestDispatcher("/registerFailEmail.jsp").forward(req, resp);
            }
        } else {
            req.getRequestDispatcher("/registerFailPassword.jsp").forward(req,resp);
            // TODO create registerFailed.jsp in case: password should be the same

        }
    }
}
