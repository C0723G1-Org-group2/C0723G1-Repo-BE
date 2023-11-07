<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<c:import url="/include/header.jsp"></c:import>
<body>
<!--MAIN-CONTENT-->
<div class="container" style="background-color: white; height: 100%">
  <div class="row">
    <h3>Chi tiết phiếu mượn ></h3>
  </div>

  <!--    BORROW DETAIL-->
  <div class="row">
    <div class="col-lg-4">
      <div class="card mb-3" style="width: 18rem;">
        <img src="https://tiemanhsky.com/wp-content/uploads/2020/03/61103071_2361422507447925_6222318223514140672_n_1.jpg" class="card-img-top" alt="...">
      </div>
    </div>

    <div class="col-lg-8">
      <table class="table table-striped">
        <tr>
          <td>
            Mã tài khoản độc giả: ${borrowCard.getIdAccount()}
          </td>
        </tr>
        <tr>
          <td>
            Mã sách: ${borrowCard.getBookId()}
          </td>
        </tr>
        <tr>
          <td>
            Ngày mượn: ${borrowCard.getStartDate()}
          </td>
        </tr>
        <tr>
          <td>
            Hạn trả: ${borrowCard.getEndDate()}
          </td>
        </tr>
      </table>
    </div>
  </div>

</div>
<c:import url="/include/footer.jsp"></c:import>
</body>
</html>
