<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 11/6/2023
  Time: 8:35 PM
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
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
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
        .news button{
            height: 54px;
            width: 120px;
            border-radius: 25px;
            font-size: 14px;
        }

       .news button:hover {
            background-color: #4a9dec;
            color: #ebebeb;
            border: 1px solid #4a9dec;
        }
        .left table tr{
            height: 450px;
        }
        .left  table tr img{
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
        }

        .article {
            width: 100%;
            height: 410px;
            display: inline-block;
            vertical-align:top;
        }



    </style>
</head>

<body>
<!--HEADER-->
<c:import url="../header.jsp"></c:import>
  <!--    NAV BAR-->
<c:import url="navbar_guest.jsp"></c:import>

<%--CONTENT--%>
<div class="container" style="background-color: white; height: fit-content">
    <div class="row">
        <h3>SÁCH HOT ></h3>
    </div>
    <!--        Carousel-->
    <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <a href="###">
                    <div class="card" style="width: 100%;">
                        <img src="https://www.vietnamfineart.com.vn/wp-content/uploads/2023/03/hinh-anh-bia-anime-dep-6.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text d-flex justify-content-center align-items-center">Thanh gươm diệt
                                quỷ</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="carousel-item">
                <a href="###">
                    <div class="card" style="width: 100%;">
                        <img src="https://www.vietnamfineart.com.vn/wp-content/uploads/2023/03/hinh-anh-bia-anime-dep-6.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text d-flex justify-content-center align-items-center">Thanh gươm diệt
                                quỷ</p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="carousel-item">
                <a href="###">
                    <div class="card" style="width: 100%;">
                        <img src="https://www.vietnamfineart.com.vn/wp-content/uploads/2023/03/hinh-anh-bia-anime-dep-6.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <p class="card-text d-flex justify-content-center align-items-center">Thanh gươm diệt
                                quỷ</p>
                        </div>
                    </div>
                </a>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls"
                data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <div class="row">
        <div class="col-lg-9 left">
            <h3>Kho sách ></h3>
            <div style="height: 100vh" class="table-responsive">
                <table class="table align-middle">
                    <tbody>
                    <tr class="news row col-lg-12">
                        <c:forEach items="${bookList}" var="book" varStatus="status">
                            <td class="col-lg-3">
                                <a href="##">
                                    <div class="card" style="width: 100%;">
                                        <div class="card-body article">
                                            <img id="thumb" src="${book.getImg()}"
                                                 class="card-img-top">
                                            <h5 class="card-title" style="margin-top: 12px;">${book.getBookName()}</h5>
                                            <div class="btn-card" style="display: inline-block; position: absolute; bottom: 20px;">
                                                <a href="/book?action=edit&book_id=${book.getBookId()}" class="btn btn-primary mt-1">Chi tiết</a>
                                                <a href="/book?action=delete&book_id=${book.getBookId()}" class="btn btn-danger mt-1">Yêu thích</a>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </td>
                        </c:forEach>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="col-lg-3 right">
            <h3>SÁCH ĐỀ CỬ ></h3>
            <div class="pt-4">
                <table class="table table-hover">
                    <tr>
                        <td><a href="##">1. Luyện Khí mười vạn năm</a></td>
                    </tr>
                    <tr>
                        <td><a href="##">1. Luyện Khí mười vạn năm</a></td>
                    </tr>
                    <tr>
                        <td><a href="##">1. Luyện Khí mười vạn năm</a></td>
                    </tr>
                    <tr>
                        <td><a href="##">1. Luyện Khí mười vạn năm</a></td>
                    </tr>
                    <tr>
                        <td><a href="##">1. Luyện Khí mười vạn năm</a></td>
                    </tr>
                    <tr>
                        <td><a href="##">1. Luyện Khí mười vạn năm</a></td>
                    </tr>
                    <tr>
                        <td><a href="##">1. Luyện Khí mười vạn năm</a></td>
                    </tr>
                    <tr>
                        <td><a href="##">1. Luyện Khí mười vạn năm</a></td>
                    </tr>
                    <tr>
                        <td><a href="##">1. Luyện Khí mười vạn năm</a></td>
                    </tr>
                    <tr>
                        <td><a href="##">1. Luyện Khí mười vạn năm</a></td>
                    </tr>
                </table>
            </div>
        </div>

    </div>

</div>


<c:import url="footer.jsp"></c:import>
<%--FOOTER--%>

</body>
</html>
