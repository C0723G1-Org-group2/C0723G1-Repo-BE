<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<c:import url="/include/header.jsp"></c:import>
<body>
<!--MAIN-CONTENT-->
<div class="container" style="background-color: white; height: 100%">
    <div class="row">
        <h3>Quản lý phiếu mượn ></h3>
    </div>
    <div class="row">
        <ul class="d-flex justify-content-center align-items-center">
            <li>
                <a href="/borrowcard?action=create">
                    <button class="btn-create-search btn-success">Thêm</button>
                </a>
            </li>
<%--            <li>--%>
<%--                <button class="btn-create-search btn-primary">Tìm kiếm</button>--%>
<%--            </li>--%>
        </ul>
    </div>

    <!--    BORROW DETAIL-->
    <div class="row">
        <form action="/borrowcard" method="post">
            <table class="table table-striped table-hover">
                <c:forEach items="${borrowCardDOTList}" var="borrowCard" varStatus="status">
<%--                    <input type="hidden" name="id" value="${borrowCard.getId()}">--%>
                    <tr>
                        <td>
                            <p>${status.count} User ${borrowCard.getUserName()} đã mượn
                                sách ${borrowCard.getStartDate()}.
                                <a
                                        href="/borrowcard?action=detail&borrow_card_id=${borrowCard.getId()}">Chi tiết
                                </a>
                            </p>
                        </td>
                        <td>
                            <a href="/borrowcard?action=edit&id=${borrowCard.getId()}">
                                <button class="btn btn-warning" style="color: white" >
                                    Sửa
                                </button>
                            </a>
                        </td>
                        <td>
                            <button type="button"
                                    onclick="send('${borrowCard.getId()}')"
                                    class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#delete">
                                Xóa
                            </button>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </form>
    </div>

<%--    <!-- Modal -->--%>
    <div class="modal fade" id="delete" tabindex="-1" aria-labelledby="exampleModalLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <form action="/borrowcard?action=delete" method="post">
                <div class="modal-content">
                    <div class="modal-header">
                        <h1 class="modal-title fs-5" id="exampleModalLabel">Xoá phiếu mượn</h1>
                        <button type="button" class="btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                            <input type="hidden" name="id" id="id">
                        Bạn có chắc chắn muốn xoá không?
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn-danger" data-bs-dismiss="modal">Huỷ</button>
                        <button type="submit" class="btn-danger">Xoá</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
<%--    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
<%--        <div class="modal-dialog">--%>
<%--            <form action="/borrowcard?action=delete" method="post">--%>
<%--                <div class="modal-content">--%>
<%--                    <div class="modal-header">--%>
<%--                        <h1 class="modal-title fs-5" id="exampleModalLabel">Xác nhận</h1>--%>
<%--                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--                    </div>--%>
<%--                    <div class="modal-body">--%>
<%--                        <input type="hidden" name="borrow_card_id" id="borrow_card_id">--%>
<%--                        Bạn có chắc chắn muốn xóa phiếu mượn của người dùng <span class="text-danger" id="name"></span>--%>
<%--                    </div>--%>
<%--                    <div class="modal-footer">--%>
<%--                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Huỷ</button>--%>
<%--                        <button type="submit" class="btn btn-danger" data-bs-dismiss="modal" id="delete">Xoá</button>--%>

<%--                    </div>--%>
<%--                </div>--%>
<%--            </form>--%>
<%--        </div>--%>
<%--    </div>--%>
</div>

<script>
    function send(id) {
        document.getElementById("id").value = id;
    }
</script>
<c:import url="/include/footer.jsp"></c:import>
</body>
</html>
