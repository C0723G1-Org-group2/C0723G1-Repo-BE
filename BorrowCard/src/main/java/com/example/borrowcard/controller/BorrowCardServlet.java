package com.example.borrowcard.controller;

import com.example.borrowcard.model.BorrowCard;
import com.example.borrowcard.model.BorrowCardDOT;
import com.example.borrowcard.service.IBorrowCardService;
import com.example.borrowcard.service.impl.BorrowCardService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "BorrowCard", value = "/borrowcard")
public class BorrowCardServlet extends HttpServlet {
    private final IBorrowCardService borrowCardService = new BorrowCardService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showAddForm(req, resp);
                break;
//            case "edit":
//                showEditForm(req, resp);
//                break;
            case "remove":
                deleteBorrowCard(req, resp);
                break;
            case "detail":
                showDetail(req,resp);
                break;
            default:
                showAll(req, resp);
                break;
        }
    }

    private void deleteBorrowCard(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("id"));
        try {
            borrowCardService.deleteBorrowCard(id);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        try {
            resp.sendRedirect("/borrowcard");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }


    }

    private void showDetail(HttpServletRequest req, HttpServletResponse resp) {
        int id = Integer.parseInt(req.getParameter("borrow_card_id"));
        BorrowCard borrowCard = borrowCardService.selectBorrowCard(id);
        req.setAttribute("borrowCard", borrowCard);
        RequestDispatcher requestDispatcher;
        requestDispatcher = req.getRequestDispatcher("view/borrow_card/detail.jsp");
        try {
            requestDispatcher.forward(req, resp);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    private void showAddForm(HttpServletRequest req, HttpServletResponse resp) {
        try {
            List<BorrowCardDOT> borrowCardDOTList = borrowCardService.selectAllBorrowCard();
            req.setAttribute("borrowCardDOTList", borrowCardDOTList);
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("view/borrow_card/create.jsp");
            requestDispatcher.forward(req, resp);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showAll(HttpServletRequest req, HttpServletResponse resp) {
        List<BorrowCardDOT> borrowCardDOTList = borrowCardService.selectAllBorrowCard();
        try {
            RequestDispatcher requestDispatcher = req.getRequestDispatcher("view/borrow_card/list.jsp");
            req.setAttribute("borrowCardDOTList", borrowCardDOTList);
            requestDispatcher.forward(req, resp);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createBorrowCard(req, resp);
                break;
//            case "edit":
//                editUser(req, resp);
//                break;
            case "delete":
                deleteBorrowCard(req, resp);
                break;



        }
    }

    private void createBorrowCard(HttpServletRequest req, HttpServletResponse resp) {
        String startDate = req.getParameter("start_date");
        String endDate = req.getParameter("end_date");
        int bookId = Integer.parseInt(req.getParameter("book_id"));
        int idAccount = Integer.parseInt(req.getParameter("id_account"));

        BorrowCard borrowCard = new BorrowCard(startDate, endDate, bookId, idAccount);
        try {
            borrowCardService.insertBorrowCard(borrowCard);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        try {
            resp.sendRedirect("/borrowcard");
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
