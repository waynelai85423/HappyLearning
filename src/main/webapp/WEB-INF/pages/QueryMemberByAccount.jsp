<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="fourth.bean.MemberBean"%>
<%@ page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>會員後台</title>
<link rel="shortcut icon" type="image/x-icon"
	href="assets/images/smalllogo.png" />
<style>
.tb {
	border-collapse: collapse;
	margin-left: 300px;
	width: 1000px;
	/*自動斷行*/
	word-wrap: break-word;
	table-layout: fixed;
}
</style>
</head>
<body>
	<jsp:include page="BackendHeader.jsp" />
	<jsp:include page="Style.jsp" />
	<%-- 	<c:if test="${sessionScope.user == null}"> --%>
	<%-- 		<% --%>
	<!-- 	// request.getRequestDispatcher("/Login.jsp").forward(request, -->
	<!-- 	response); -->
	<%-- 		%> --%>
	<%-- 	</c:if> --%>
	<br>
	<br>
	<br>
	<br>
	<div align="center">
		<button type="submit">
			<a href="addNewUser">新增會員</a>
		</button>
	</div>
	ㄋ
	<div align="center">
		<form action="queryAccount" method="post">
			<label> 帳號查詢 : <input type="text" name="keyword_account">
			</label> <input type="submit" name="query" value="查詢">
			<p>${errorMsgMap.QueryError}</p>
		</form>
	</div>
	<hr>
	<div>
		<h3>會員查詢</h3>
	</div>
	<table class="tb" border='1' style="background-color: white;">
		<thead>
			<tr>
				<th>ID</th>
				<!-- 				<th>暱稱</th> -->
				<th>帳號</th>
				<!-- <th>密碼</th> -->
				<th>身分</th>
				<th>姓名</th>
				<th>大頭貼</th>
				<!-- 				<th>性別</th> -->
				<!-- 				<th>生日</th> -->
				<th>手機號碼</th>
				<th>信箱</th>
				<!-- 				<th>註冊日期</th> -->
				<th>Actions</th>
			</tr>
		</thead>
		<%
		List<MemberBean> list = (List<MemberBean>) request.getAttribute("queryResult");
		for (MemberBean memberBean : list) {
		%>
		<tbody>
			<tr>
				<td><%=memberBean.getuserId()%></td>
				<%-- 				<td><%=memberBean.getNick()%></td> --%>
				<td><%=memberBean.getAccount()%></td>
				<!-- <td><c:out value="${mb.password}" /></td> -->
				<td><c:choose>
						<c:when test="<%=memberBean.getStatus() == 4%>">
             		 						(學生)待審核
       							</c:when>

						<c:when test="<%=memberBean.getStatus() == 1%>">
             		 						學生
       							</c:when>
						<c:when test="<%=memberBean.getStatus() == 2%>">
              								老師
       							</c:when>
						<c:otherwise>
              						管理員
       							</c:otherwise>
					</c:choose>
					<c:if test="<%=memberBean.getStatus() == 4%>">
						<a class="btn btn-primary"
							href="checkteacher?userId=<%=memberBean.getuserId()%> ">審核</a>
					</c:if></td>
				<td><%=memberBean.getName()%></td>
				<td><img src="<%=memberBean.getImg()%>" width="150"
					height="100"></td>
				<%-- 				<td><%=memberBean.getSex()%></td> --%>
				<%-- 				<td><%=memberBean.getBirthday()%></td> --%>
				<td><%=memberBean.getCellphone()%></td>
				<td><%=memberBean.getEmail()%></td>
				<%-- 				<td><%=memberBean.getJoinDate()%></td> --%>
				<
				<td><a class="btn btn-warning"
					href="showEditUser?userId=<%=memberBean.getuserId()%> ">修改</a> <button
						class="btn btn-danger btn--raised" onclick="del(${mb.userId})">刪除</button></td>
			</tr>
			<%
			}
			%>
		</tbody>
	</table>
	<center>
		<a href="memberList"><input type="submit" name="return"
			value="返回會員列表"></a>
	</center>
	<script type="text/javascript">
	function del(id) {
		console.log(id);
		Swal.fire({
			title: '確認刪除會員?',
			text: "",
			icon: 'warning',
			showCancelButton: true,
			confirmButtonColor: '#d33',
			cancelButtonColor: '#3085d6',
			confirmButtonText: '刪除',
			cancelButtonText: '取消',
		}).then((result) => {
			if (result.isConfirmed) {
				Swal.fire({
					title: '刪除成功!',
					willClose: function () {
						$.ajax({
							async: true,
							type: "get",
							
							url: "deleteUser/" + id,
							success: function (data) {
								$(`#${id}`).remove();
								window.location.assign(window.location.href);
								// 					history.go(0);
							}
						})
					}
				})
			}
		})
	}
	
	</script>
</body>
</html>