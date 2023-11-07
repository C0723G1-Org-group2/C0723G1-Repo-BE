<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<c:import url="/include/header.jsp"></c:import>
<!--MAIN-CONTENT-->
<body>
<div class="container" style="background-color: white; height: 100%">
    <div class="row">
        <h3>Thêm mới phiếu mượn ></h3>
    </div>
    <form action="/borrowcard?action=create" method="post">
        <table class="table table-striped">
            <tr>
                <td>
            <span>Ngày mượn:
            <input type="text" name="start_date">
            </span>
                </td>
            </tr>

            <tr>
                <td>
            <span>Ngày trả:
            <input type="text" name="end_date">
            </span>
                </td>
            </tr>

            <tr>
                <td>
            <span>Mã sách:
            <input type="text" name="book_id">
<%--                <select name="" id="">--%>
<%--                    <option value=""></option>--%>
<%--                </select>--%>
            </span>
                </td>
            </tr>

            <tr>
                <td>
            <span>Mã Tài khoản:
            <input type="text" name="id_account">
            </span>
                </td>
            </tr>

            <tr>
                <td>
                    <button type="submit">OK</button>
                </td>
            </tr>
        </table>
    </form>
    <a href="/borrowcard">Back</a>
</div>

<c:import url="/include/footer.jsp"></c:import>
</body>
</html>
