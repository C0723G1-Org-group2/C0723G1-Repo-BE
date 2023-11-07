<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<c:import url="/include/header.jsp"></c:import>
<body>

<!--MAIN-CONTENT-->
<div class="container" style="background-color: white; height: 100%">
    <div class="row">
        <h3>Quản lý nhân viên ></h3>
    </div>
    <div class="row">
        <ul class="d-flex justify-content-center align-items-center">
            <li>
                <!-- Button trigger modal -->
                <button type="button" class="btn-create-search btn-success" data-bs-toggle="modal"
                        data-bs-target="#create">
                    Thêm mới
                </button>
            </li>
            <li>
                <button type="button" class="btn-create-search btn-primary" data-bs-toggle="modal"
                        data-bs-target="#search">
                    Tìm kiếm
                </button>
            </li>
        </ul>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <table class="table table-striped table-hover">
                <tr>
                    <th>User</th>
                    <th>Tên</th>
                    <th>Chi tiết</th>
                    <th>Sửa</th>
                    <th>Xóa</th>
                </tr>
                <c:forEach items="${list}" var="list">
                    <tr>
                        <td>${list.account.name}</td>
                        <td>${list.name}</td>
                        <td>
                            <a href="/employee?action=detail&id=${list.id}">Chi tiết</a>
                        </td>
                        <td>
                            <button class="btn-warning" style="color: white"><a
                                    href="/employee?action=update&id=${list.id}">Sửa</a></button>
                        </td>
                        <td>
                            <button class="btn-danger" data-bs-toggle="modal" data-bs-target="#delete"
                                    onclick="send('${list.id}','${list.name}')">Xoá
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
            <div class="modal fade" id="search" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <form action="/employee?action=search" method="post">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel1">Tìm kiếm theo tên</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <input class="form-control me-2" type="search" placeholder="Nhập tên nhân viên"
                                       name="name">
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button class="btn btn-outline-success" type="submit">Search</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal fade" id="delete" tabindex="-1" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <form action="/employee?action=delete" method="post">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h1 class="modal-title fs-5" id="exampleModalLabel">Remove book</h1>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <input type="hidden" name="id" id="id">
                                Ban co chac chan xoa <span id="name" class="text-danger"> </span> ?
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn-danger" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn-danger">Remove</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>

            <!-- Modal -->
            <div class="modal fade" id="create" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                 aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <form action="/employee?action=create" method="post">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="staticBackdropLabel">Thêm mới</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                        aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">User name</label>
                                    <input type="text" class="form-control" placeholder="Username" aria-label="Username"
                                           aria-describedby="basic-addon1" name="name">
                                </div>
                                <div class="mb-3">
                                    <label for="exampleInputPassword1" class="form-label">Password</label>
                                    <input type="text" class="form-control" id="exampleInputPassword1" name="passWord">
                                </div>
                                <div class="mb-3 form-check">
                                    <label for="exampleInputPassword1" class="form-label">Type account</label>
                                    <input type="text" class="form-control" placeholder="Username" aria-label="Username"
                                           aria-describedby="basic-addon1" name="typeAc" readonly value="employee">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn-danger" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn-danger">Thêm</button>
                                <%--                                <button type="button" class="btn-danger">Thêm</button>--%>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
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
