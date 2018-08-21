package com.przestal.helper;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class VerifyUserLoginStatus extends HttpServlet {


    public void verifyLoginStatus (HttpSession session, HttpServletResponse response){


        if (session.getAttribute("email")==null){
            try {
                response.sendRedirect("/login.jsp");
            } catch (IOException e) {
                e.printStackTrace();
            }

        }



    }



}
