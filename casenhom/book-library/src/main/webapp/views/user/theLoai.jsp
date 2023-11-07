<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 11/3/2023
  Time: 4:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <c:import url="/include/header.jsp"></c:import>
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
<%--   <div id="header">--%>
<%--  <!-- Header-->--%>
<%--  <nav class="navbar navbar-light header">--%>
<%--    <div class="container">--%>
<%--      <a class="navbar-brand py-0" href="#">--%>
<%--        <img src="Logo.jpg" alt="logo" width="100%" height="25" />--%>
<%--      </a>--%>
<%--      <form class="d-flex w-50">--%>
<%--        <input--%>
<%--                class="form-control"--%>
<%--                type="search"--%>
<%--                placeholder="Nhập tên sách, tác giả hoặc thể loại để tìm"--%>
<%--                aria-label="Search"--%>
<%--        />--%>
<%--        <button class="btn btn-outline-light ms-1" type="submit">--%>
<%--          Search--%>
<%--        </button>--%>
<%--      </form>--%>
<%--      <ul class="d-flex m-0 log-in">--%>
<%--        <a class="d-flex" href="#">--%>
<%--          <li>--%>
<%--            <i--%>
<%--                    class="fa-solid fa-right-to-bracket"--%>
<%--                    style="color: #ffffff"--%>
<%--            ></i>--%>
<%--          </li>--%>
<%--          <li class="px-2"><a href="/login">Đăng nhập</a></li>--%>
<%--        </a>--%>

<%--        <a class="d-flex" href="#">--%>
<%--          <li>--%>
<%--            <i class="fa-regular fa-user" style="color: #ffffff"></i>--%>
<%--          </li>--%>
<%--          <li class="px-2"><a href="/signup">Đăng ký</a></li>--%>
<%--        </a>--%>
<%--      </ul>--%>
<%--    </div>--%>
<%--  </nav>--%>


<!--    NAV BAR-->
<%--<nav class="navbar navbar-expand-lg navbar-light bg-light p-0">--%>
<%--  <div class="container-fluid">--%>
<%--    <div--%>
<%--            class="collapse navbar-collapse d-flex justify-content-center align-items-center"--%>
<%--            id="navbarSupportedContent"--%>
<%--    >--%>
<%--      <ul class="navbar-nav mb-2 mb-lg-0">--%>
<%--        <li class="nav-item">--%>
<%--          <a class="nav-link" href="#">Trang chủ</a>--%>
<%--        </li>--%>
<%--        <li class="nav-item dropdown">--%>
<%--          <a--%>
<%--                  class="nav-link dropdown-toggle"--%>
<%--                  href="#"--%>
<%--                  id="navbarDropdown"--%>
<%--                  role="button"--%>
<%--                  data-bs-toggle="dropdown"--%>
<%--                  aria-expanded="false"--%>
<%--          >--%>
<%--            Thể loại--%>
<%--          </a>--%>
<%--          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--            <li><a class="dropdown-item" href="#">Thể loại 1</a></li>--%>
<%--            <li><a class="dropdown-item" href="#">Thể loại 1</a></li>--%>
<%--            <li><a class="dropdown-item" href="#">Thể loại 1</a></li>--%>
<%--            <li><a class="dropdown-item" href="#">Thể loại 1</a></li>--%>
<%--            <li><a class="dropdown-item" href="#">Thể loại 1</a></li>--%>
<%--            <li><a class="dropdown-item" href="#">Thể loại 1</a></li>--%>
<%--            <li><a class="dropdown-item" href="#">Thể loại 1</a></li>--%>
<%--          </ul>--%>
<%--        </li>--%>
<%--        <li class="nav-item">--%>
<%--          <a class="nav-link" href="#">Đang theo dõi</a>--%>
<%--        </li>--%>
<%--        <li class="nav-item">--%>
<%--          <a class="nav-link" href="#">Phiếu mượn của tôi</a>--%>
<%--        </li>--%>
<%--      </ul>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</nav>--%>
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
  <div class="search-books">
    <form action="/user?action=search" method="post">
    <h3 class="text-center">Tìm Kiếm Truyện Tranh</h3>
    <input name="book_name" class="search" placeholder="Tìm Kiếm Tên Truyện" />
     <button type="submit" style="border: 1px solid #4a9dec"><a href="#"></a> Tìm Kiếm</button>
    </form>
    <div class="btn-of-search">
      <ul class="status-of-books row col-lg-9" style="display: inline">
        <li>
          <button type="button" class="btn-status">Tất Cả</button>
        </li>
        <li>
          <button type="button" class="btn-status">Hoàn Thành</button>
        </li>
        <li>
          <button type="button" class="btn-status">Đang Tiến Hành</button>
        </li>
      </ul>
    </div>
    <table class="table">
      <tr >
        <th rowspan="4">Sắp Xếp Theo:</th>
        <th><button><a href="/user?action=sortByPublish">Ngày Xuất Bản</a></button></th>
        <th><button><a href="/user?action=sortNewBook">Truyện Mới Cập Nhật</a></button></th>
        <th><button><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
          <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
          <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
        </svg> Top All</button></th>
        <th><button><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
          <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
          <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
        </svg> Top Tháng</button></th>
      </tr>

      <tr>
        <th><button><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
          <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
          <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
        </svg> Top Tuần</button></th>
        <th><button><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
          <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
          <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
        </svg> Top Ngày</button></th>
        <th><button><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
          <path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
        </svg> Theo dõi</button></th>
        <th><button><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-right-text" viewBox="0 0 16 16">
          <path d="M2 1a1 1 0 0 0-1 1v8a1 1 0 0 0 1 1h9.586a2 2 0 0 1 1.414.586l2 2V2a1 1 0 0 0-1-1H2zm12-1a2 2 0 0 1 2 2v12.793a.5.5 0 0 1-.854.353l-2.853-2.853a1 1 0 0 0-.707-.293H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12z"/>
          <path d="M3 3.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zM3 6a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9A.5.5 0 0 1 3 6zm0 2.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5z"/>
        </svg> Bình Luận</button></th>
      </tr>
      <tr>
        <th><button><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list-ol" viewBox="0 0 16 16">
          <path fill-rule="evenodd" d="M5 11.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5z"/>
          <path d="M1.713 11.865v-.474H2c.217 0 .363-.137.363-.317 0-.185-.158-.31-.361-.31-.223 0-.367.152-.373.31h-.59c.016-.467.373-.787.986-.787.588-.002.954.291.957.703a.595.595 0 0 1-.492.594v.033a.615.615 0 0 1 .569.631c.003.533-.502.8-1.051.8-.656 0-1-.37-1.008-.794h.582c.008.178.186.306.422.309.254 0 .424-.145.422-.35-.002-.195-.155-.348-.414-.348h-.3zm-.004-4.699h-.604v-.035c0-.408.295-.844.958-.844.583 0 .96.326.96.756 0 .389-.257.617-.476.848l-.537.572v.03h1.054V9H1.143v-.395l.957-.99c.138-.142.293-.304.293-.508 0-.18-.147-.32-.342-.32a.33.33 0 0 0-.342.338v.041zM2.564 5h-.635V2.924h-.031l-.598.42v-.567l.629-.443h.635V5z"/>
        </svg> Số Chapter</button></th>
        <th><button><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-list-ul" viewBox="0 0 16 16">
          <path fill-rule="evenodd" d="M5 11.5a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm0-4a.5.5 0 0 1 .5-.5h9a.5.5 0 0 1 0 1h-9a.5.5 0 0 1-.5-.5zm-3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm0 4a1 1 0 1 0 0-2 1 1 0 0 0 0 2zm0 4a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
        </svg> Top Follow</button></th>
      </tr>

    </table>
  </div>
  <div class="row mt-5">
    <div class="col-lg-9 left px-0">
      <h3>KHO SÁCH ></h3>
      <div style="height: 100vh;" class="table-responsive">
        <table class="table align-middle">
          <tbody>
              <tr class="news row col-lg-12">
                <c:forEach items="${bookList}" var="book" varStatus="status">
                <td class="col-lg-3">
                  <a href="##">
                    <div class="card" style="width: 100%;">
                      <div class="card-body article">
                        <img class="thumb" src="${book.getImg()}"
                             class="card-img-top" alt="...">
                        <h5 class="card-title" style="margin-top: 12px;">${book.getBookName()}</h5>
                        <div class="btn-card" style="display: inline-block; position: absolute; bottom: 20px;">
                          <a href="/user?action=detail&book_id=${book.getBookId()}" class="btn btn-primary mt-1">Chi tiết</a>
                          <a href="#" class="btn btn-primary mt-1">Yêu Thích</a>
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
<div class="card text-center mt-5">
  <div class="card-header">
    <img src="logo_footer.png" width="10%" />
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
</div>

</body>
</html>
