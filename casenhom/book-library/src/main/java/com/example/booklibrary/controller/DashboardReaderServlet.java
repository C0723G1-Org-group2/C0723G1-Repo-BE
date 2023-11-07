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
        name = "dashboard",
        value = {
                "/dashboard/reader",
                "/dashboard/reader/detail",
                "/dashboard/reader/edit",
                "/dashboard/reader/remove",
        })
public class DashboardReaderServlet extends HttpServlet {
    private final IReaderService readerService = new ReaderServiceImpl();
    private final IAccountService accountService = new AccountService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        // Kiểm tra session
        HttpSession session = request.getSession(false);
        String url = request.getRequestURI();
        if (session == null || !session.getAttribute("type_account").equals("admin" )) {
            response.sendRedirect("/error-access");
        } else if (session.getAttribute("type_account").equals("admin")||session.getAttribute("type_account").equals("employee")) {
            if (url.endsWith("/dashboard/reader")) {
                showListReader(request, response);
            } else if (url.endsWith("/dashboard/reader/detail")) {
                showInfoReader(request, response);
            } else if (url.endsWith("/dashboard/reader/remove")) {
                removeReader(request, response);
            } else if (url.endsWith("/dashboard/reader/edit")) {
                showEditReader(request, response);
            } else if (url.endsWith("/dashboard/reader/create")) {
                showAddReader(request, response);
            }
        }
    }



    private void showAddReader(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/view_reader/add.jsp");
        dispatcher.forward(request, response);
    }

    private void createReader(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String name = request.getParameter("name1");
        String fullName = request.getParameter("nameFull");
        String address = request.getParameter("address");
        String citizenId = request.getParameter("citizenId");
        String dateOfBirth = request.getParameter("dateOfBirth");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");
        String image = request.getParameter("image");

        // Kiểm tra các trường thông tin độc giả có được nhập đầy đủ không
        if (name == null || name.isEmpty() || fullName == null || fullName.isEmpty() || address == null || address.isEmpty() || citizenId == null || citizenId.isEmpty() || dateOfBirth == null || dateOfBirth.isEmpty() || email == null || email.isEmpty() || phoneNumber == null || phoneNumber.isEmpty()) {
            request.setAttribute("msgError", "Thông tin không hợp lệ");
            // Chuyển hướng về trang thêm độc giả để người dùng có thể thử lại
            showAddReader(request, response);
        }

        Reader reader = new Reader(name, address, citizenId, dateOfBirth, email, phoneNumber, image);
//        reader.setReaderName(fullName);
//        reader.setAddress(address);
//        reader.setCitizenId(citizenId);
//        reader.setDateOfBirth(dateOfBirth);
//        reader.setEmail(email);
//        reader.setPhoneNumber(phoneNumber);
//        reader.setImage(image);
//        reader.setAccount();


        boolean success = readerService.createReader(reader);

        // Kiểm tra kết quả thêm mới và điều hướng người dùng
        if (success) {
            response.sendRedirect(request.getContextPath() + "/dashboard/reader");
        } else {
            request.setAttribute("msgError", "Thêm mới độc giả thất bại");
            // Chuyển hướng về trang thêm độc giả để người dùng có thể thử lại
            showAddReader(request, response);
        }
    }

    private void showEditReader(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idReader = Integer.parseInt(request.getParameter("id"));
        Reader reader = readerService.findById(idReader);
        request.setAttribute("reader", reader);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/view_reader/edit.jsp");
        dispatcher.forward(request, response);
    }


    private void updateReader(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int readerId = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name1");
        String fullName = request.getParameter("nameFull");
        String address = request.getParameter("address");
        String citizenId = request.getParameter("citizenId");
        String dateOfBirth = request.getParameter("dateOfBirth");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phoneNumber");

        // Kiểm tra các trường thông tin độc giả có được nhập đầy đủ không
        if (name == null || name.isEmpty() || fullName == null || fullName.isEmpty() || address == null || address.isEmpty() || citizenId == null || citizenId.isEmpty() || dateOfBirth == null || dateOfBirth.isEmpty() || email == null || email.isEmpty() || phoneNumber == null || phoneNumber.isEmpty()) {
            request.setAttribute("msgError", "Thông tin không hợp lệ");

            // Chuyển hướng về trang cập nhật thông tin độc giả để người dùng có thể thử lại
            request.setAttribute("reader", readerService.findById(readerId));
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/view_reader/edit.jsp");
            dispatcher.forward(request, response);
        }
        Reader reader = readerService.findById(readerId);
        reader.getAccount().setName(name);
        reader.setReaderName(fullName);
        reader.setAddress(address);
        reader.setCitizenId(citizenId);
        reader.setDateOfBirth(dateOfBirth);
        reader.setEmail(email);
        reader.setPhoneNumber(phoneNumber);
        boolean success = readerService.updateReader(reader);
        request.setAttribute("reader", readerService.findById(readerId));
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/views/view_reader/edit.jsp");
        dispatcher.forward(request, response);

        // Lấy thông tin độc giả từ database và cập nhật thông tin


        // Kiểm tra kết quả cập nhật và điều hướng người dùng
        if (success) {
            response.sendRedirect(request.getContextPath() + "/dashboard/reader/detail?id=" + readerId);
        } else {
            request.setAttribute("msgError", "Cập nhật thông tin độc giả thất bại");

            // Chuyển hướng về trang danh sách độc giả
            showListReader(request, response);
        }
    }


    private void removeReader(HttpServletRequest request, HttpServletResponse response) {
        int idReader = Integer.parseInt(request.getParameter("id"));
        boolean status = readerService.removeReader(idReader);
        if (status == true) {
            try {
                response.sendRedirect("/dashboard/reader");
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        } else {
            request.setAttribute("msgError", "Xóa thất bại, người dùng không hợp lệ");
            showListReader(request, response);
        }
    }

    private void showInfoReader(HttpServletRequest request, HttpServletResponse response) {
        int idReader = Integer.parseInt(request.getParameter("id"));
        Reader reader = readerService.findById(idReader);
        request.setAttribute("reader", reader);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/view_reader/detail.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    private void showListReader(HttpServletRequest request, HttpServletResponse response) {
        List<Reader> listReader = readerService.listReadable();
        request.setAttribute("listReader", listReader);
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/views/view_reader/list.jsp");
        try {
            requestDispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Bắt Param Action
        String action = req.getParameter("action");
        if ("create".equals(action)) { // Thêm mới độc giả
            createReader(req, resp);
        } else if ("edit".equals(action)) { // Cập nhật thông tin độc giả
            updateReader(req, resp);
        } else if ("delete".equals(action)) { // Xóa độc giả
            removeReader(req, resp);
        }
    }
}