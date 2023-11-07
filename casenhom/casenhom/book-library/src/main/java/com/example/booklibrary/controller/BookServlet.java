package com.example.booklibrary.controller;

import com.example.booklibrary.model.Author;
import com.example.booklibrary.model.Book;
import com.example.booklibrary.model.BookType;
import com.example.booklibrary.service.IAuthorService;
import com.example.booklibrary.service.IBookService;
import com.example.booklibrary.service.IBookTypeService;
import com.example.booklibrary.service.impl.AuthorServiceImpl;
import com.example.booklibrary.service.impl.BookServiceImpl;
import com.example.booklibrary.service.impl.BookTypeServiceImpl;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BookServlet", value = "/book")
public class BookServlet extends HttpServlet {
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
                showCreateForm(request,response);
                break;
            case "edit":
                showEditForm(request,response);
                break;
            case "delete":
                deleteBook(request,response);
                break;
            case "sortByName":

                break;
            default:
                listBook(request,response);
                break;
        }
    }
    private void showEditForm(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("book_id"));
        int author_id = Integer.parseInt(request.getParameter("book_id"));
        Book book = bookService.selectBook(id);
        List<Author> author = authorService.getAllAuthor();
        List<BookType> bookTypeList = bookTypeService.getAll();
        BookType bookType = bookTypeService.selectBookType(id);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/book/edit.jsp");
        request.setAttribute("bookEdit",book);
        request.setAttribute("authorEdit",author);
        request.setAttribute("bookTypeEdit",bookTypeList);
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void deleteBook(HttpServletRequest request, HttpServletResponse response) {
        int book_id = Integer.parseInt(request.getParameter("book_id"));
        bookService.deleteBook(book_id);
        List<Book> bookList = bookService.getAll();
        request.setAttribute("bookList",bookList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/book/nhanVienTheLoai.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void listBook(HttpServletRequest request, HttpServletResponse response) {
        List<Book> bookList = bookService.getAll();
        request.setAttribute("bookList",bookList);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/book/nhanVienTheLoai.jsp");
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
            case "create":
            createBook(request,response);
                break;
            case "edit":
                updateBook(request,response);
                break;
            case "delete":
                break;
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
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("view/book/nhanVienTheLoai.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }

    }

    private void updateBook(HttpServletRequest request, HttpServletResponse response) {
        int book_id = Integer.parseInt(request.getParameter("book_id"));
        String book_name = request.getParameter("book_name");
        String book_intro = request.getParameter("book_intro");
        String img = request.getParameter("Img");
        int publish_year = Integer.parseInt(request.getParameter("publish_year"));
        int book_quantity = Integer.parseInt(request.getParameter("book_quantity"));
        Book book = new Book(book_id,book_name,publish_year,img,book_intro,book_quantity);
        bookService.updateBook(book);
        RequestDispatcher requestDispatcher= request.getRequestDispatcher("view/book/edit.jsp");
        try {
            requestDispatcher.forward(request,response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }

    }

    private void showCreateForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<BookType> bookTypeList = bookTypeService.getAll();
        List<Author>  authorList = authorService.getAllAuthor();
        request.setAttribute("bookTypeList",bookTypeList);
        request.setAttribute("authorList",authorList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/book/create.jsp");
        dispatcher.forward(request, response);
    }
    private void createBook(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("book_name");
        int publishYear = Integer.parseInt(request.getParameter("publish_year"));
        String img = request.getParameter("image");
        String book_intro = request.getParameter("book_intro");
        int bookQuantity = Integer.parseInt(request.getParameter("book_quantity"));
        int author_id = Integer.parseInt(request.getParameter("author_id"));
        int book_type_id = Integer.parseInt(request.getParameter("book_type_id"));
        Author author = new Author(author_id);
        if (author_id == -1){
            authorService.insertAuthor(author);
        }
        BookType bookType = new BookType();
        Book book = new Book(name,publishYear,img,book_intro,author_id,book_type_id,bookQuantity);
        bookService.insertBook(book);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/book/create.jsp");
        dispatcher.forward(request,response);
    }
}
