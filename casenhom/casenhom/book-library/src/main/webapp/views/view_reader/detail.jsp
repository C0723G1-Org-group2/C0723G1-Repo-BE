<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 03/11/2023
  Time: 17:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="en">
<c:import url="/include/header.jsp"></c:import>
<body>
<!--MAIN-CONTENT-->
<div class="container" style="background-color: white; height: 100%">
    <div class="row">
        <h3>Chi tiết độc giả </h3>
    </div>
    <div class="btn-group-toggle" data-toggle="buttons">
        <label class="btn btn-secondary active">
            <a href="/dashboard/reader">Trở lại trang chủ</a>
        </label>
    </div>

    <!--    BORROW DETAIL-->
    <div class="row">
        <div class="col-lg-4">
            <div class="card mb-3" style="width: 18rem;">
                <img src="${reader.image}"
                     class="card-img-top" alt="...">
            </div>
        </div>

        <div class="col-lg-8">
            <table class="table table-striped">
                <tr>
                    <td>Username: </td>
                    <td>${reader.account.name}</td>
                </tr>
                <tr>
                    <td>Họ Và Tên: </td>
                    <td>${reader.readerName}</td>
                </tr>
                <tr>
                    <td>Địa chỉ: </td>
                    <td>${reader.address}</td>
                </tr>
                <tr>
                    <td>Số chứng minh nhân dân: </td>
                    <td>${reader.citizenId}</td>
                </tr>
                <tr>
                    <td>Ngày tháng năm sinh: </td>
                    <td>${reader.dateOfBirth}</td>
                </tr>
                <tr>
                    <td>Email: </td>
                    <td>${reader.email}</td>
                </tr>
                <tr>
                    <td>Số điện thoại:</td>
                    <td>${reader.phoneNumber}</td>
                </tr>
            </table>
        </div>
    </div>

</div>

<c:import url="/include/footer.jsp"></c:import>
<script>
    function send(id, name) {
        document.getElementById("id").value = id;
        document.getElementById("name").innerText = name;
    }
</script>
</body>
</html>