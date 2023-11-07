<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 11/7/2023
  Time: 12:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
  </script>
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

</style>
<html>
<body>
<!--HEADER-->
<div id="header">
  <nav class="navbar navbar-light header">
    <div class="container">
      <a class="navbar-brand py-0" href="#">
        <img src="./img/Logo.jpg" alt="logo" width="100%" height="25">
      </a>
      <form class="d-flex w-50 mb-0">
        <input class="form-control" type="search" placeholder="Nhập tên sách để tìm"
               aria-label="Search">
        <button class="btn btn-outline-light ms-1" type="submit">Search</button>
      </form>
      <ul class="d-flex m-0 log-in">
        <a class="d-flex" href="#">
          <li>
            <i class="fa-solid fa-right-to-bracket" style="color: #ffffff;"></i>
          </li>
          <li class="px-2">Đăng nhập</li>
        </a>

        <a class="d-flex" href="#">
          <li>
            <i class="fa-regular fa-user" style="color: #ffffff;"></i>
          </li>
          <li class="px-2"> Đăng ký</li>
        </a>
      </ul>
    </div>
  </nav>
</div>

</body>
</html>
