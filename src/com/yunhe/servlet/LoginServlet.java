package com.yunhe.servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //通过PrintWrite打印输出流可以用于反馈数据
        PrintWriter out = resp.getWriter();
        //获取发送过来的数据
        String name = req.getParameter("uname");

        //根据用户名判断
        if("金铭".equals(name)){
            out.print("fail");
        }else{
            out.print("成功");
        }
        out.close();
    }
}
