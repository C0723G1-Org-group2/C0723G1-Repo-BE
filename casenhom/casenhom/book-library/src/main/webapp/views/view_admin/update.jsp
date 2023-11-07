<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<c:import url="/include/header.jsp"></c:import>
<body>

<!--MAIN-CONTENT-->
<div class="container" style="background-color: white; height: 100%">
    <div class="row">
        <h3>Chỉnh sửa nhân viên ></h3>
    </div>
    <form action="/employee?action=update" method="post">
        <!--    BORROW DETAIL-->
        <div class="row">
            <div class="col-lg-4">
                <div class="card mb-3" style="width: 18rem;">
                    <img src="${employee.img}" class="card-img-top" alt="avatar">
                </div>
            </div>
            <div class="col-lg-8">
                <table class="table table-striped">
                    <tr>
                        <td>
                            <div class="row">
                                <label for="id" class="col-sm-2 col-form-label">Id:</label>
                                <div class="col-sm-10">
                                    <input type="text" readonly class="form-control-plaintext" id="id" name="id"
                                           value="${employee.id}">
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="row">
                                <label for="name" class="col-sm-2 col-form-label">Nhân viên:</label>
                                <div class="col-sm-10">
                                    <input type="text" required class="form-control-plaintext" id="name" name="name"
                                           value="${employee.name}">
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="row">
                                <label for="birthDay" class="col-sm-2 col-form-label">Ngày sinh:</label>
                                <div class="col-sm-10">
                                    <input type="date" required class="form-control-plaintext" id="birthDay" name="birthDay"
                                           value="${employee.birthDay}">
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="row">
                                <label for="phone" class="col-sm-2 col-form-label">Số điện thoại:</label>
                                <div class="col-sm-10">
                                    <input type="text" required class="form-control-plaintext" id="phone" name="phone"
                                           value="${employee.phone}">
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="row">
                                <label for="img" class="col-sm-2 col-form-label">Link Ảnh:</label>
                                <div class="col-sm-10">
                                    <input type="text" required class="form-control-plaintext" id="img" name="img"
                                           value="${employee.img}">
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div class="row">
                                <label for="accountId" class="col-sm-2 col-form-label">Username</label>
                                <div class="col-sm-10">
                                    <input type="text" readonly class="form-control-plaintext" id="accountId" name="accountId"
                                           value="${employee.account.id}">Tên account ${employee.account.name}
                                </div>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button class="btn-warning" type="submit">Sửa</button>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</div>

<c:import url="/include/footer.jsp"></c:import>
</body>
</html>