<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hoangnx2812
  Date: 5/11/2024
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
            crossorigin="anonymous"></script>
</head>
<body class="container">
<div class="card-body" style="background: black; border-radius: 5px">
    <a class="btn btn-light" href="/kich-thuoc/hien-thi">Kich Thuoc</a>
    <a class="btn btn-light" href="/khach-hang/hien-thi">Khach Hang</a>
    <a class="btn btn-light" href="/mau-sac/hien-thi">Mau Sac</a>
    <a class="btn btn-light" href="/san-pham/hien-thi">San Pham</a>
    <a class="btn btn-light" href="/san-pham-chi-tiet/hien-thi">San Pham Chi Tiet</a>
    <a class="btn btn-light" href="/nhan-vien/hien-thi">Nhan Vien</a>
    <a class="btn btn-light" href="/hoa-don/hien-thi">Hoa Don</a>
    <a class="btn btn-light" href="/hoa-don-chi-tiet/hien-thi">Hoa Don Chi Tiet</a>
    <a class="btn btn-light" href="/ban-hang/hien-thi">Ban Hang</a>
    <a class="btn btn-light" href="/login/hien-thi">Dang Xuat</a>
    <a class="btn btn-light" aria-valuetext="">Hello: ${currentUser.ten}</a>
</div>
<div style="text-align: center">
    <h3>Danh Sach Hoa Don</h3>
</div>
<div>
    <table class="table table-striped">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nhan Vien</th>
            <th>Khach Hang</th>
            <th>Ngay Mua</th>
            <th>Trang Thai</th>
            <th>Chuc Nang</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${listHD}" var="list">
            <tr>
                <td>${list.id}</td>
                <td>${list.tenNhanVien}</td>
                <td>${list.tenKhachHang}</td>
                <td>${list.ngayMuaHang}</td>
                <td>${list.trangThai == 1 ? "Da Thanh Toan" : "Cho Thanh Toan"}</td>
                <td>
                    <a class="btn btn-info" href="/hoa-don/edit/${list.id}">Chi Tiet</a>
                    <a class="btn btn-info" href="/hoa-don/detail/${list.id}">HDCT</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="d-flex justify-content-center">
    <nav aria-label="Page navigation example">
        <ul class=" pagination">
            <c:forEach begin="1" end="${totalPages}" var="i">
                <c:choose>
                    <c:when test="${currentPage == i}">
                        <li class="page-item"><a style="color: red; text-decoration:underline;" class="page-link">${i}</a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item"><a class="page-link" href="/hoa-don/hien-thi?page=${i}&limit=${limit}">${i}</a></li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </ul>
    </nav>
</div>
</body>
</html>