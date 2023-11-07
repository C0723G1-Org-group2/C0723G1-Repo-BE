<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 11/4/2023
  Time: 1:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Haitenz.net</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
    />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
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

    button{
        border-radius: 10px;
    }

    .btn-create-search{
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
                <img src="/view/logo/Logo.jpg" alt="logo" width="100%" height="25">
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
                    <li class="px-2"> Hi, DG-1</li>
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
                        <a class="nav-link" href="#">Thể loại</a>
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

<!--MAIN-CONTENT-->
<div class="container" style="background-color: white; height: 100%">
    <div class="row">
        <h3>Chi Tiết Truyện ${bookEdit.getBookName()} ></h3>
    </div>

    <!--    BORROW DETAIL-->
    <div class="row">
        <div class="col-lg-4">
            <div class="card mb-3" style="width: 18rem;">
                <img src="${bookEdit.getImg()}" class="card-img-top" alt="...">
            </div>
        </div>
        <div class="col-lg-8">
            <form action="/book?action=edit" method="post">
            <table class="table table-striped">
                <tr >
                    <td rowspan="10">Sửa Sách</td>
                </tr>
                <tr>
                    <td style="width: 120px;">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-square" viewBox="0 0 16 16">
                            <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h12zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H2z"/>
                            <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                        </svg>
                        Tên :
                    </td>
                    <td>
                        <input type="text" name="book_name" value="<c:out value="${bookEdit.getBookName()}"/>"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                            <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3Zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6Z"/>
                        </svg>
                        Tác Giả:
                    </td>
                    <td>
                        <input hidden name="author_id" value="<c:out value="${bookEdit.getAuthorId()}"/>">
                        <c:forEach items="${authorEdit}" var="author">
                        <c:if test="${bookEdit.getAuthorId() == (author.getAuthor_id())}">
                        <input name="author_name" value="<c:out value="${author.getAuthor_name()}"/>"/>
                        </c:if>
                        </c:forEach>
                    </td>
                </tr>
                <tr>
                    <td>Năm Xuất Bản</td>
                    <td>
                        <input type="text" name="publish_year" value="<c:out value="${bookEdit.getPublishYear()}"/>"/>
                    </td>
                </tr>
                <tr>
                    <td>Image</td>
                    <td>
                        <input type="text" name="Img" value="<c:out value="${bookEdit.getImg()}"/>"/>
                    </td>
                </tr>
               <tr>
                   <td>Số Lượng </td>
                   <td>
                       <input type="text" name="book_quantity" value="<c:out value="${bookEdit.getBook_quantity()}"/>"/>
                   </td>
               </tr>
                <tr>
                    <td> <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-bookmarks-fill" viewBox="0 0 16 16">
                        <path d="M2 4a2 2 0 0 1 2-2h6a2 2 0 0 1 2 2v11.5a.5.5 0 0 1-.777.416L7 13.101l-4.223 2.815A.5.5 0 0 1 2 15.5V4z"/>
                        <path d="M4.268 1A2 2 0 0 1 6 0h6a2 2 0 0 1 2 2v11.5a.5.5 0 0 1-.777.416L13 13.768V2a1 1 0 0 0-1-1H4.268z"/>
                    </svg>Thể Loại</td>
                    <td>
                        <input hidden name="book_type_id" value="<c:out value="${bookEdit.getBookTypeId()}"/>">
                        <c:forEach items="${bookTypeEdit}" var="bookType">
                            <c:if test="${bookEdit.getBookTypeId() == (bookType.getBook_type_id())}">
                                <input name="author_name" value="<c:out value="${bookType.getBook_type_name()}"/>"/>
                            </c:if>
                        </c:forEach>
                    </td>
                </tr>

                <tr>
                    <td><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-text" viewBox="0 0 16 16">
                        <path d="M5.5 7a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zM5 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5z"/>
                        <path d="M9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.5L9.5 0zm0 1v2A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5z"/>
                    </svg> Nội Dung:</td>
                    <td>
                        <textarea  style="width: 350px" name="book_intro">
                            ${bookEdit.book_intro}
                        </textarea>
                    </td>
                </tr>
                <tr>
                    <td><input type="submit" value="Sửa"></td>
                    <td>
                        <a href="/book">Quay Lại Trang Chủ</a>
                    </td>
                    <td>
                        <button class="btn-primary">Thêm Vào Yêu Thích</button>
                    </td>
                </tr>

<tr>
<td><input hidden name="book_id" value="<c:out value="${bookEdit.getBookId()}"/>"></td>
    </tr>
            </table>
            </form>
        </div>
    </div>

</div>

<!--FOOTER-->
<div class="card text-center mt-5">
    <div class="card-header">
        <img src="/view/logo/logo_footer.png" width="10%"/></div>
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
