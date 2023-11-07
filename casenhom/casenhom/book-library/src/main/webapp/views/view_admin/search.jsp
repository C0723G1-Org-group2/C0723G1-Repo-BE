<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<c:import url="/include/header.jsp"></c:import>
<body>


<!--MAIN-CONTENT-->
<div class="container" style="background-color: white; height: 100%">
    <div class="row">
        <h3>Chi tiết nhân viên ></h3>
    </div>
    <c:choose>
        <c:when test="${employee.size()!=0}">
                <c:forEach items="${employee}" var="list">
                    <!--    BORROW DETAIL-->
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="card mb-3" style="width: 18rem;">
                                    <img src="${list.img}" class="card-img-top" alt="Avatar">
                            </div>
                        </div>

                        <div class="col-lg-8">
                            <table class="table table-striped">
                                <tr>
                                    <td>
                                        Nhân viên: ${list.name}
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Ngày sinh: ${list.birthDay}
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        Số điện thoại: ${list.phone}
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        User name: ${list.account.name}
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </c:forEach>
        </c:when>
        <c:otherwise>
            <h2 class="text-warning"> Không có nhân viên nào được tìm thấy</h2>
        </c:otherwise>
    </c:choose>
</div>

<c:import url="/include/footer.jsp"></c:import>
</body>
</html>
