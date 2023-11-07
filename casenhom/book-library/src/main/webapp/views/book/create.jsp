<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 11/3/2023
  Time: 9:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8" />
    <meta
            name="viewport"
            content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0"
    />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Haitenz.net</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
    />
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
            crossorigin="anonymous"
    />
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"
    ></script>
</head>
<style>
    html {
        font-family: Tahoma, Helvetica, Arial, sans-serif;
    }

    body {
        background-color: #ebebeb;
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
    .search {
        border: 2px solid transparent;
        width: 70%;
        height: 2.5em;
        padding-left: 0.8em;
        outline: none;
        overflow: hidden;
        background-color: #f3f3f3;
        border-radius: 10px;
        transition: all 0.5s;
    }

    .search:hover,
    .search:focus {
        border: 2px solid #4a9dec;
        box-shadow: 0px 0px 0px 7px rgb(74, 157, 236, 20%);
        background-color: white;
    }
    .status-of-books li {
        display: inline;
        justify-content: space-between;
    }
    .status-of-books li button {
        height: 54px;
        width: 120px;
    }
    .search-books {
        text-align: center;
    }
    .search {
        margin-bottom: 15px;
    }
    button{
        height: 54px;
        width: 120px;
    }
    button {
        border-radius: 25px;
        font-size: 14px;
    }
    button:hover {
        background-color: #4a9dec;
        color: #ebebeb;
        border: 1px solid #4a9dec;
    }
    .left table tr{
        height: 450px;
    }
    .left  table tr img{
        width: 195px;
        height: 273px;
    }
    .left table tr h5{
        font-size: 15px;
    }
    table tr a{

    }


    /* reponsive card */
    .news{
        width: 100%;
        height: auto;
        padding: 5px;
        background-color: #e6e6e6;
    }
    .article {
        width: 210px;
        height: 410px;
        display: inline-block;
        padding: 5px;
        margin-left: 10px;
        vertical-align:top;
    }
    .thumb {
        width: 100%;
        height: 273px;
        background-color: #3e3e3e;
        background-image: none;
        background-repeat: no-repeat;
        background-position: center center;
        background-size: cover;
    }
</style>
<body>
<!--HEADER-->
<div id="header">
    <!-- Header-->
    <nav class="navbar navbar-light header">
        <div class="container">
            <a class="navbar-brand py-0" href="#">
                <img src="/view/logo/Logo.jpg" alt="logo" width="100%" height="25" />
            </a>
            <form class="d-flex w-50">
                <input
                        class="form-control"
                        type="search"
                        placeholder="Nhập tên sách, tác giả hoặc thể loại để tìm"
                        aria-label="Search"
                />
                <button class="btn btn-outline-light ms-1" type="submit">
                    Search
                </button>
            </form>
            <ul class="d-flex m-0 log-in">
                <a class="d-flex" href="#">
                    <li>
                        <i
                                class="fa-solid fa-right-to-bracket"
                                style="color: #ffffff"
                        ></i>
                    </li>
                    <li class="px-2">Đăng nhập</li>
                </a>

                <a class="d-flex" href="#">
                    <li>
                        <i class="fa-regular fa-user" style="color: #ffffff"></i>
                    </li>
                    <li class="px-2">Đăng ký</li>
                </a>
            </ul>
        </div>
    </nav>


    <!--    NAV BAR-->
    <nav class="navbar navbar-expand-lg navbar-light bg-light p-0">
        <div class="container-fluid">
            <div
                    class="collapse navbar-collapse d-flex justify-content-center align-items-center"
                    id="navbarSupportedContent"
            >
                <ul class="navbar-nav mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Trang chủ</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a
                                class="nav-link dropdown-toggle"
                                href="#"
                                id="navbarDropdown"
                                role="button"
                                data-bs-toggle="dropdown"
                                aria-expanded="false"
                        >
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
                        <a class="nav-link" href="#">Quản Lý Khách Hàng</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Quản Lý Phiếu Mượn</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</div>
<div class="container" style="background-color: white; height: 100%">
    <div class="row">
        <h3>SÁCH HOT > </h3>
    </div>
    <!--        Carousel-->
    <div
            id="carouselExampleControls"
            class="carousel slide"
            data-bs-ride="carousel"
    >
        <div class="carousel-inner">
            <div class="carousel-item active">
                <a href="###">
                    <div class="card" style="width: 100%">
                        <img
                                src="https://www.vietnamfineart.com.vn/wp-content/uploads/2023/03/hinh-anh-bia-anime-dep-6.jpg"
                                class="card-img-top"
                                alt="..."
                        />
                        <div class="card-body">
                            <p
                                    class="card-text d-flex justify-content-center align-items-center"
                            >
                                Thanh gươm diệt quỷ
                            </p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="carousel-item">
                <a href="###">
                    <div class="card" style="width: 100%">
                        <img
                                src="https://www.vietnamfineart.com.vn/wp-content/uploads/2023/03/hinh-anh-bia-anime-dep-6.jpg"
                                class="card-img-top"
                                alt="..."
                        />
                        <div class="card-body">
                            <p
                                    class="card-text d-flex justify-content-center align-items-center"
                            >
                                Thanh gươm diệt quỷ
                            </p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="carousel-item">
                <a href="###">
                    <div class="card" style="width: 100%">
                        <img
                                src="https://www.vietnamfineart.com.vn/wp-content/uploads/2023/03/hinh-anh-bia-anime-dep-6.jpg"
                                class="card-img-top"
                                alt="..."
                        />
                        <div class="card-body">
                            <p
                                    class="card-text d-flex justify-content-center align-items-center"
                            >
                                Thanh gươm diệt quỷ
                            </p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <button
                class="carousel-control-prev"
                type="button"
                data-bs-target="#carouselExampleControls"
                data-bs-slide="prev"
        >
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button
                class="carousel-control-next"
                type="button"
                data-bs-target="#carouselExampleControls"
                data-bs-slide="next"
        >
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
    <div class="create">
        <form action="/book?action=create" method="post">
            <table class="table table-striped">

                <tr>
                    <th rowspan="8"><h3>Thêm Truyện</h3></th>
                    <th>Tên Sách:</th>
                    <td><input name="book_name"></td>
                </tr>
                <tr>
                    <th>Tác Giả</th>
                    <td>
                        <select name="author_id">
                            <c:forEach items="${authorList}" var="author">
                            <option value="${author.getAuthor_id()}">${author.getAuthor_name()}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <th>Thể Loại Truyện</th>
                    <td>
                        <select name="book_type_id">
                            <c:forEach items="${bookTypeList}" var="bookType">
                                <option value="${bookType.getBook_type_id()}">${bookType.getBook_type_name()}</option>
                            </c:forEach>
                        </select>

                    </td>
                </tr>
                <tr>
                    <th>Năm Xuất Bản</th>
                    <td><input name="publish_year"></td>
                </tr>
                <tr>
                    <th>URL của ảnh</th>
                    <td><input name="image"></td>
                </tr>
                <tr>
                    <th>Chi Tiết Sách</th>
                    <td><textarea class="form-control" name="book_intro"></textarea></td>
                </tr>
                <tr>
                    <th>Số Lượng Sách</th>
                    <td><input name="book_quantity"></td>
                </tr>
                <tr>
                    <td></td>
                    <td colspan="2">
                        <button style="background-color: #4a9dec">  <a href="/book">Quay Lại Trang Chủ</a></button>
                        <input type="submit" value="Thêm" class="btn-primary">
                    </td>


                </tr>
            </table>

        </form>

    </div>
</div>
<div class="card text-center mt-5">
  <div class="card-header">
    <img src="/view/logo/logo_footer.png" width="10%" />
  </div>
  <div class="card-body">
    <h5 class="card-title">Thư viện Online C0723G1 - Team 2</h5>
    <p class="card-text">
      With supporting text below as a natural lead-in to additional content.
    </p>
    <a href="#" class="btn btn-primary">Trở lại đầu trang</a>
  </div>
  <div class="card-footer text-muted">Since 2023</div>
</div>
</body>
</html>
