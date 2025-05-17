<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.util.*,fourth.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.tb {
	border-collapse: collapse;
	width: 1100px;
	/*自動斷行*/
  	word-wrap: break-word;  
	table-layout: fixed;
	margin-left: 130px
}
</style>
<!-- <link rel="stylesheet" type="text/css" -->
<!-- 	href="https://cdn.datatables.net/1.12.1/css/jquery.dataTables.css"> -->

<script type="text/javascript">
	$(document).ready( function () {
	    $('#order').DataTable(); 
	} );
</script>
</head>
<body>
	<br>
	<br>
	<br>
	<br>
	<div style="width: 1500px;" class="container">
		<div class="row justify-content-center" >
			<div class="col-auto" style="margin-left: 200px;">
<!-- 				<form action="searchOder" method="post" class="tb"> -->
<!-- 					搜尋訂單: <input type="search" name="search"></input> -->
<!-- 					<button onclick="search()">查詢</button> -->
<!-- 				</form> -->
				<table class="table table-striped table-hover tb"  id="order">
					<thead>
						<tr>
							<th>會員帳號</th>
							<th>會員姓名</th>
							<th>會員信箱</th>
							<th>訂單編號</th>
							<th>訂單生成日期</th>
							<th>總數</th>
							<th>訂單狀態</th>
							<th>總價</th>
							<th>詳細</th>
							<th>刪除</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${order}" var="order">
	
							<tr>
								<td>${order.memberBean.account}</td>
								<td>${order.memberBean.name}</td>
								<td>${order.memberBean.email}</td>
								<td>${order.orderId }</td>
								<td>${order.date }</td>
								<td>${order.totoalcount }</td>
								<td>${order.status.status }</td>
								<td>$${order.totoalprice }</td>
	
								<td>
									<form action="orderDetail" method="post">
										<input type="hidden" name="cartID" value="${order.orderId}" />
										<button style="background-color: blue;">詳細</button>
									</form>
								</td>
								<td>
	
									<form action="deleteOrder" method="post"
										onclick="if( !(confirm('確認刪除?') ) ) return false">
										<input type="hidden" name="cartID" value="${order.orderId}" />
										<button>刪除</button>
									</form>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<c:choose>
					<c:when test="${search != null }">
						<div style="border: 1px solid #ddd">
							<div style="width: 100px; margin: auto;">查無此訂單!!!</div>
						</div>
					</c:when>

					<c:when test="${order == null }">
						<div style="border: 1px solid #ddd">
							<div style="width: 100px; margin: auto;">尚無訂單!!!</div>
						</div>
					</c:when>
				</c:choose>
			</div>
		</div>
	</div>
</body>
</html>