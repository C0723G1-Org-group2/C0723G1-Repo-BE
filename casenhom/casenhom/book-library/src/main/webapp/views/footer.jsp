<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 11/7/2023
  Time: 1:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Document</title>
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

    #footer{
      display: inline-block;
      width: 100%;
    }
  </style>
</head>
<body>
<div class="card text-center mt-5" id="footer" >
  <div class="card-header">
    <img src="img/logo_footer.png" width="10%" />
  </div>
  <div class="card-body">
    <h5 class="card-title">Thư viện Online C0723G1 - Team 2</h5>
    <p class="card-text">
      Chúng tôi luôn cố gắng hết sức để mang lại trải nghiệm tốt nhất cho người dùng.
    </p>
    <a href="#" class="btn btn-primary">Trở lại đầu trang</a>
  </div>
  <div class="card-footer text-muted">Since 2023</div>
</div>
</body>
</html>

