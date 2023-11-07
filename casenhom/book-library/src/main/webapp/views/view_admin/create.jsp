<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<c:import url="/include/header.jsp"></c:import>
<!--MAIN-CONTENT-->
<body>
<!--MAIN-CONTENT-->
<div class="container" style="background-color: white; height: 100%">
    <div class="row">
        <h3>Thêm mới nhân viên ></h3>
    </div>

    <!--    BORROW DETAIL-->
    <div class="row">
        <div class="col-lg-4">
            <div class="card mb-3" style="width: 18rem;">
                <img src="https://tiemanhsky.com/wp-content/uploads/2020/03/61103071_2361422507447925_6222318223514140672_n_1.jpg"
                     class="card-img-top" alt="...">
            </div>
        </div>

        <div class="col-lg-8">
            <form action="/employee?action=create" method="post">
                <table class="table table-striped">
                    <tr>
                        <td>
                            <label>Nhân viên: <input type="text" value="name" name="name"></label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Ngày sinh: <input type="date" value="Ngày sinh" name="birthDay"></label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Số điện thoại: <input type="text" value="Số điện thoại" name="phone"></label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label>Image: <input type="text" value="file ảnh" name="image"></label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <select name="account">
                                <c:forEach items="${list}" var="list">
                                    <option value="${list.id}">${list.name}</option>
                                </c:forEach>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button class="btn-create-search btn-primary"><input type="submit" value="Thêm mới"></button>
                        </td>
                    </tr>
                    <%--                <tr>--%>
                    <%--                    <td>--%>
                    <%--                        Email:--%>
                    <%--                    </td>--%>
                    <%--                </tr>--%>
                    <%--                <tr>--%>
                    <%--                    <td>--%>
                    <%--                        Ngày vào làm:--%>
                    <%--                    </td>--%>
                    <%--                </tr>--%>
                </table>
            </form>
        </div>
    </div>

</div>

<c:import url="/include/footer.jsp"></c:import>
</body>
</html>
