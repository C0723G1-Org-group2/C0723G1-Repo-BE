package com.example.booklibrary.controller;

import com.example.booklibrary.model.Account;
import com.example.booklibrary.model.Reader;
import com.example.booklibrary.service.IAccountService;
import com.example.booklibrary.service.IReaderService;
import com.example.booklibrary.service.impl.AccountService;
import com.example.booklibrary.service.impl.ReaderServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;


@WebServlet(
        name = "login",
        value = {
                "/login",
                "/signup",
                "/logout",
                "/error-access",
        })
public class LogInServlet extends HttpServlet {
    private final IReaderService readerService = new ReaderServiceImpl();
    private final IAccountService accountService = new AccountService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String url = request.getRequestURI();
        if (url.endsWith("/signup")) {
            showSignUp(request, response);
        } else if (url.endsWith("/login")) {
            showLogInForm(request, response);
        } else if (url.endsWith("/logout")) {
            logOut(request, response);
        } else if (url.endsWith("/error-access")) {
            errorAccess(request, response);
        }
    }

    private void errorAccess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/views/error-access.jsp");
        dispatcher.forward(request, response);
    }

    private void logOut(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session=request.getSession();
        session.invalidate();
        response.sendRedirect("/");
    }

    private void showLogInForm(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/login.jsp");
        dispatcher.forward(request, response);
    }

    private void showSignUp(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/sign-up.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURI();
        if (url.endsWith("/signup")) {
            saveInfoSignUp(req, resp);
        } else if (url.endsWith("/login")) {
            checkLogIn(req, resp);
        }
    }

    private void checkLogIn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if (accountService.findByUsername(username) == null) {
            req.setAttribute("errorUsername","Không tồn tại tài khoản này trong hệ thống");
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/login.jsp");
            requestDispatcher.forward(req,resp);
        } else {
            Account account = accountService.findByUsernameAndPassWord(username,password);
            if (account == null) {
                req.setAttribute("errorPassword","Mật khẩu không chính xác !");
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/login.jsp");
                requestDispatcher.forward(req,resp);
            } else {
                HttpSession session= req.getSession();
                session.setAttribute("username",username);
                session.setAttribute("typeAccount",account.getTypeAc());
                resp.sendRedirect("/");
            }
        }
    }

    private void saveInfoSignUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirmPassword");
        String address = req.getParameter("address");
        String citizenId = req.getParameter("citizenId");
        String birthday = req.getParameter("birthday");
        String phone = req.getParameter("phone");
        Account account = new Account(username,password,"user");
        accountService.createAccount(account);
        Account accountUpdate = accountService.findByUsername(username);
        Reader reader = new Reader(name,address,citizenId,birthday,email,phone,"",accountUpdate);
        readerService.createReader(reader);
        req.setAttribute("reader",reader);
        RequestDispatcher requestDispatcher = req.getRequestDispatcher("/views/signup-sussces.jsp");
        requestDispatcher.forward(req,resp);
    }
}