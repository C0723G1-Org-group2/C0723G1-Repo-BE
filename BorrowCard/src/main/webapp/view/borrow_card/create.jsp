<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 11/5/2023
  Time: 11:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<link
        rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
/>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</head>
<style>

    html {
        font-family: Tahoma, Helvetica, Arial, sans-serif;
    }

    body {
        background-color: #EBEBEB;
    }

    .header {
        background-color: #721799;
    }

    ul {
        list-style-type: none;
    }

    a {
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

    #header {
        position: sticky;
        top: 0;
        z-index: 100;
    }

    .log-in a {
        color: white;
    }

    .log-in a:hover {
        color: black;
        text-decoration: underline;
    }

    .navbar-nav li {
        margin: 0 10vh;
        padding: 0;
    }

    .navbar-nav li:hover {
        background-color: #b8c7d0;
    }

    .navbar-nav li:hover a {
        color: #721799;
    }

    .container h3 {
        padding: 1%;
        color: #074091;
    }

    button {
        border-radius: 10px;
    }

    .btn-create-search {
        width: 100px;
        margin: 0 10vh;
    }

</style>
<body>

<!--HEADER-->
<div id="header">
    <!-- Header-->
    <nav class="navbar navbar-light header">
        <div class="container">
            <a class="navbar-brand py-0" href="#">
                <img src="./img/Logo.jpg" alt="logo" width="100%" height="25">
            </a>
            <form class="d-flex w-50">
                <input class="form-control" type="search" placeholder="Nhập tên sách, tác giả hoặc thể loại để tìm"
                       aria-label="Search">
                <button class="btn btn-outline-light ms-1" type="submit">Search</button>
            </form>
            <ul class="d-flex m-0 log-in">
                <a class="d-flex" href="#">
                    <li>
                        <i class="fa-regular fa-user" style="color: #ffffff;"></i>
                    </li>
                    <li class="px-2"> Hi, nv-1</li>
                </a>

                <a class="d-flex" href="#">
                    <li>
                        <i class="fa-solid fa-right-to-bracket" style="color: #ffffff;"></i>
                    </li>
                    <li class="px-2">Đăng xuất</li>
                </a>
            </ul>
        </div>
    </nav>

    <!--    NAV BAR-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light p-0">
        <div class="container-fluid">
            <div class="collapse navbar-collapse d-flex justify-content-center align-items-center"
                 id="navbarSupportedContent">
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Trang chủ</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Quản lý thể loại</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Quản lý sách</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Quản lý phiếu mượn</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>

<!--MAIN-CONTENT-->
<div class="container" style="background-color: white; height: 100%">
    <div class="row">
        <h3>Thêm mới phiếu mượn ></h3>
    </div>
    <body>
    <form action="/borrowcard?action=create" method="post">
        <table class="table table-striped">
            <tr>
                <td>
            <span>Ngày mượn:
            <input type="text" name="start_date">
            </span>
                </td>
            </tr>

            <tr>
                <td>
            <span>Ngày trả:
            <input type="text" name="end_date">
            </span>
                </td>
            </tr>

            <tr>
                <td>
            <span>Mã sách:
            <input type="text" name="book_id">
            </span>
                </td>
            </tr>
            <tr>
<%--                <td>--%>
<%--            <span>Mã Tài khoản:--%>
<%--            <input type="text" name="id_account">--%>
<%--            </span>--%>
<%--                </td>--%>
            </tr>

            <tr>
                <td>
                    <button type="submit">OK</button>
                </td>
            </tr>
        </table>
    </form>

    <a href="/borrowcard">Back</a>
    <!--FOOTER-->
    <div class="card text-center mt-5">
        <div class="card-header">
            <img src="img/logo_footer.png" width="10%"/></div>
        <div class="card-body">
            <h5 class="card-title">Thư viện Online C0723G1 - Team 2</h5>
            <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
            <a href="#" class="btn btn-primary">Trở lại đầu trang</a>
        </div>
        <div class="card-footer text-muted">
            Since 2023
        </div>
    </div>
    </body>
</html>
