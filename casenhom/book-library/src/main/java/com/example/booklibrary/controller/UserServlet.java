package com.example.booklibrary.controller;

import com.example.booklibrary.model.Author;
import com.example.booklibrary.model.Book;
import com.example.booklibrary.model.BookType;
import com.example.booklibrary.service.IAuthorService;
import com.example.booklibrary.service.IBookService;
import com.example.booklibrary.service.IBookTypeService;
import com.example.booklibrary.service.IUserService;
import com.example.booklibrary.service.impl.AuthorServiceImpl;
import com.example.booklibrary.service.impl.BookServiceImpl;
import com.example.booklibrary.service.impl.BookTypeServiceImpl;
import com.example.booklibrary.service.impl.UserService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/user")
public class UserServlet extends HttpServlet {
    private final IUserService userService = new UserService();
    private final IBookService bookService = new BookServiceImpl();
    private final IAuthorService authorService = new AuthorServiceImpl();
    private final IBookTypeService bookTypeService = new BookTypeServiceImpl();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }

        switch (action) {
            case "create":
                break;
            case "detail":
                showDetail(request,response);
                break;
            case "delete":

                break;
            case "sortByPublish":
                sortPublish(request,response);
                break;
            case "sortNewBook":
                    sortNewBook(request,response);
            default:
                listBook(request,response);
                break;
        }
    }

    private void sortNewBook(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<Book> bookList = userService.sortNewBook();
        request.setAttribute("bookList",bookList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/user/theLoai.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void sortPublish(HttpServletRequest request, HttpServletResponse response) {
        List<Book> bookList = userService.sortPublish();
        request.setAttribute("bookList",bookList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/user/theLoai.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showDetail(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("book_id"));
        int author_id = Integer.parseInt(request.getParameter("book_id"));
        Book book = bookService.selectBook(id);
        List<Author> author = authorService.getAllAuthor();
        List<BookType> bookTypeList = bookTypeService.getAll();
        BookType bookType = bookTypeService.selectBookType(id);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/user/detail.jsp");
        request.setAttribute("bookEdit",book);
        request.setAttribute("authorEdit",author);
        request.setAttribute("bookTypeEdit",bookTypeList);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void listBook(HttpServletRequest request, HttpServletResponse response) {
        List<Book> bookList = bookService.getAll();
        request.setAttribute("bookList",bookList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/user/theLoai.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "search":
                searchByName(request,response);
                break;
            default:
                listBook(request,response);
                break;
        }

    }

    private void searchByName(HttpServletRequest request, HttpServletResponse response) {
        String book_name = request.getParameter("book_name");
        List<Book> bookList = bookService.searchBookByName(book_name);
        request.setAttribute("bookList",bookList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("views/user/theLoai.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }
}
