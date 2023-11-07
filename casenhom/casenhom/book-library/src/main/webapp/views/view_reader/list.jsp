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
        <h3>Quản lý độc giả ></h3>
    </div>
    <div class="row">
        <ul class="d-flex justify-content-center align-items-center">
            <li>
                <button class="btn-create-search btn-primary">Tìm kiếm</button>

            </li>
        </ul>
    </div>
    <div class="row justify-content-center">
        <c:if test="${not empty msgError}">
            <div class="alert alert-danger" role="alert">
                ${msgError}
            </div>
        </c:if>
        <div class="col-md-8">
            <table class="table table-striped table-hover">
                <thead>
                <tr>
                    <th>Tài khoản</th>
                    <th>Tên</th>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${listReader}" var="reader" varStatus="loop">
                    <tr>
                        <td>${reader.account.name}</td>
                        <td>${reader.readerName}</td>
                        <td>
                            <a role="button" class="btn btn-primary" href="/dashboard/reader/detail?id=${reader.readeId}">Chi tiết</a>
                        </td>
                        <td>
                            <a role="button" class="btn btn-warning" href="/dashboard/reader/edit?id=${reader.getReadeId()}">Sửa</a>
                        </td>
                        <td>
                            <!-- Button trigger modal -->
                            <button type="button"
                                    onclick="send('${reader.readeId}', '${reader.readerName}')"
                                    class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                Xóa
                            </button>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>

<c:import url="/include/footer.jsp"></c:import>
<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Xác nhận</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                Bạn có chắc chắn muốn xóa người dùng <span class="text-danger" id="nameUserDelete"></span>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ</button>
                <a role="button" class="btn btn-danger" id="delete">Xóa</a>
            </div>
        </div>
    </div>
</div>
<script>
    function send(id, name) {
        document.getElementById("nameUserDelete").innerHTML = name;
        document.getElementById("delete").href = "/dashboard/reader/remove?id="+id;
    }
</script>
</body>
</html>