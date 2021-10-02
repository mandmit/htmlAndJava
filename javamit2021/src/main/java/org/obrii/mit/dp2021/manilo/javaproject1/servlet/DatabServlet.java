/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.obrii.mit.dp2021.manilo.javaproject1.servlet;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.obrii.mit.dp2021.manilo.javaproject1.springCrud.Users;
import org.obrii.mit.dp2021.manilo.javaproject1.springCrud.Crud;
import org.obrii.mit.dp2021.manilo.javaproject1.springCrud.Crud;
import org.obrii.mit.dp2021.manilo.javaproject1.springCrud.Users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.support.SpringBeanAutowiringSupport;

/**
 *
 * @author Дмитрий
 */
@WebServlet(name = "DatabServlet", urlPatterns = {"/"})
public class DatabServlet extends HttpServlet {

    @Autowired
    Crud crud;
    
    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        SpringBeanAutowiringSupport.processInjectionBasedOnServletContext(this,config.getServletContext());
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        if (request.getParameter("filter") != null) {
            request.setAttribute("data", crud.sortData(request.getParameter("filter")));
        } else {
            request.setAttribute("data", crud.readData());
        }

        request.getRequestDispatcher("home.jsp").forward(request, response);
    }

    //"jdbc:postgresql://obrii.org:5432/db2021mit21s12","s12","7854"
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Users user = new Users(
                Integer.parseInt(req.getParameter("id")),
                req.getParameter("name"),
                req.getParameter("surname"),
                Integer.parseInt(req.getParameter("age")),
                Integer.parseInt(req.getParameter("stage")),
                req.getParameter("hobby")
        );
        crud.createData(user);
        doGet(req, resp);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Users user = new Users(
                Integer.parseInt(req.getParameter("id")),
                req.getParameter("name"),
                req.getParameter("surname"),
                Integer.parseInt(req.getParameter("age")),
                Integer.parseInt(req.getParameter("stage")),
                req.getParameter("hobby")
        );
        crud.updateData(user, Integer.parseInt(req.getParameter("id")));
        doGet(req, resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        crud.deleteData(Integer.parseInt(req.getParameter("id")));
        doGet(req, resp);
    }
}
