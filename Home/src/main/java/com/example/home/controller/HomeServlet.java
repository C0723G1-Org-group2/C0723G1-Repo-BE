package com.example.home.controller;


import com.example.home.model.Book;
import com.example.home.service.IBookService;
import com.example.home.service.impl.BookService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Home", value = "/home")
public class HomeServlet extends HttpServlet {
    private final IBookService bookService = new BookService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null){
            action = "";
        }

        switch (action){
            case "search":
                break;
            case "type":
                break;
            default:
                listBook(req,resp);
        }
    }

    private void listBook(HttpServletRequest request, HttpServletResponse response) {
        List<Book> bookList = bookService.getAll();
        request.setAttribute("bookList",bookList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/home.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
