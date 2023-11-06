<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 11/5/2023
  Time: 10:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
    />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>

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
</head>
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
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                           data-bs-toggle="dropdown" aria-expanded="false">
                            Thể loại
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Thể loại 1</a></li>
                            <li><a class="dropdown-item" href="#">Thể loại 1</a></li>
                            <li><a class="dropdown-item" href="#">Thể loại 1</a></li>
                            <li><a class="dropdown-item" href="#">Thể loại 1</a></li>
                            <li><a class="dropdown-item" href="#">Thể loại 1</a></li>
                            <li><a class="dropdown-item" href="#">Thể loại 1</a></li>
                            <li><a class="dropdown-item" href="#">Thể loại 1</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Đang theo dõi</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Phiếu mượn của tôi</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>

<!--MAIN-CONTENT-->
<div class="container" style="background-color: white; height: 100%">
    <div class="row">
        <h3>Quản lý phiếu mượn ></h3>
    </div>
    <div class="row">
        <ul class="d-flex justify-content-center align-items-center">
            <li>
                <a href="/borrowcard?action=create">
                    <button class="btn-create-search btn-success">Thêm</button>
                </a>
            </li>
<%--            <li>--%>
<%--                <button class="btn-create-search btn-primary">Tìm kiếm</button>--%>
<%--            </li>--%>
        </ul>
    </div>

    <!--    BORROW DETAIL-->
    <div class="row">
        <form action="/borrowcard" method="post">
            <table class="table table-striped table-hover">
                <c:forEach items="${borrowCardDOTList}" var="borrowCard" varStatus="status">
<%--                    <input type="hidden" name="id" value="${borrowCard.getId()}">--%>
                    <tr>
                        <td>
                            <p>${status.count} User ${borrowCard.getUserName()} đã mượn
                                sách ${borrowCard.getStartDate()}.
                                <a
                                        href="/borrowcard?action=detail&borrow_card_id=${borrowCard.getId()}">Chi tiết
                                </a>
                            </p>
                        </td>
                        <td>
                            <a href="/borrowcard?action=edit&id=${borrowCard.getId()}">
                                <button class="btn btn-warning" style="color: white" >
                                    Sửa
                                </button>
                            </a>
                        </td>
                        <td>
                            <button type="button"
                                    onclick="send('${borrowCard.getId()}')"
                                    class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete">
                                Xóa
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </form>
    </div>

<%--    <!-- Modal -->--%>
    <div class="modal fade" id="delete" tabindex="-1" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <form action="/borrowcard?action=delete" method="post">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Xoá phiếu mượn</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                            <input type="hidden" name="id" id="id">
                        Bạn có chắc chắn muốn xoá không?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn-danger" data-bs-dismiss="modal">Huỷ</button>
                        <button type="submit" class="btn-danger">Xoá</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
<%--    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
<%--        <div class="modal-dialog">--%>
<%--            <form action="/borrowcard?action=delete" method="post">--%>
<%--                <div class="modal-content">--%>
<%--                    <div class="modal-header">--%>
<%--                        <h1 class="modal-title fs-5" id="exampleModalLabel">Xác nhận</h1>--%>
<%--                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--                    </div>--%>
<%--                    <div class="modal-body">--%>
<%--                        <input type="hidden" name="borrow_card_id" id="borrow_card_id">--%>
<%--                        Bạn có chắc chắn muốn xóa phiếu mượn của người dùng <span class="text-danger" id="name"></span>--%>
<%--                    </div>--%>
<%--                    <div class="modal-footer">--%>
<%--                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ</button>--%>
<%--                        <button type="submit" class="btn btn-danger" data-bs-dismiss="modal" id="delete">Xoá</button>--%>

<%--                    </div>--%>
<%--                </div>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>

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
</div>

<script>
    function send(id) {
        document.getElementById("id").value = id;
    }
</script>

</body>
</html>
