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
    <form action="/dashboard/reader/edit?action=edit" method="post">
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
                        <td><input hidden name="id" value="<c:out value="${reader.getReadeId()}"></c:out>">
                        </td>
                    </tr>
                    <tr>
                        <td>Username:</td>
                        <td>
                            <input name="name1" value="<c:out value="${reader.account.name}"></c:out>">
                        </td>
                    </tr>
                    <tr>
                        <td>Họ Và Tên:</td>
                        <td>
                            <input name="nameFull" value="<c:out value="${reader.getReaderName()}"></c:out> "></td>
                    </tr>
                    <tr>
                        <td>Địa chỉ:</td>
                        <td>
                            <input name="address" value="<c:out value="${reader.address}"></c:out> "></td>
                    </tr>
                    <tr>
                        <td>Số chứng minh nhân dân:</td>
                        <td>
                            <input name="citizenId" value="<c:out value="${reader.citizenId}"></c:out> "></td>
                    </tr>
                    <tr>
                        <td>Ngày tháng năm sinh:</td>
                        <td><input name="dateOfBirth" value="<c:out value="${reader.dateOfBirth}"></c:out> "></td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td>
                            <input name="email" value="<c:out value="${reader.email}"></c:out> "></td>
                    </tr>
                    <tr>
                        <td>Số điện thoại:</td>
                        <td>
                            <input name="phoneNumber" value="<c:out value="${reader.phoneNumber}"></c:out> "></td>
                    </tr>
                </table>
                <input type="submit" value="Cập nhật" class="btn btn-outline-success">
            </div>
        </div>
    </form>


</div>

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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</div>
<script>
    function send(id, name) {
        document.getElementById("id").value = id;
        document.getElementById("name").innerText = name;
    }
</script>
<c:import url="/include/footer.jsp"></c:import>
</body>
</html>