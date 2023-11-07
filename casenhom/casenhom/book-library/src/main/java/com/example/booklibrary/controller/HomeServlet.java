package com.example.booklibrary.controller;


import com.example.booklibrary.model.Book;
import com.example.booklibrary.service.IBookService;
import com.example.booklibrary.service.impl.BookServiceImpl;


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
    private final IBookService bookService = new BookServiceImpl();
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
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/home/home.jsp");
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
