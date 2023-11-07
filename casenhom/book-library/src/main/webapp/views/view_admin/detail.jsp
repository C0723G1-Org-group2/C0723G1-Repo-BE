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
        <h3>Chi tiết nhân viên ></h3>
    </div>
    <form action="">
        <!--    BORROW DETAIL-->
        <div class="row">
            <div class="col-lg-4">
                <div class="card mb-3" style="width: 18rem;">
                    <img src="${employee.img}" class="card-img-top" alt="...">
                </div>
            </div>

            <div class="col-lg-8">
                <table class="table table-striped">
                    <tr>
                        <td>
                            Nhân viên: ${employee.name}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Ngày sinh: ${employee.birthDay}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Số điện thoại: ${employee.phone}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Tên account: ${employee.account.name}
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <button class="btn-warning" type="submit"><a class="btn-warning" href="/employee">Quay lại</a></button>
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