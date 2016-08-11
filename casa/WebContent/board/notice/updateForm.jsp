<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">
<link href="top_style.css" rel="stylesheet" type="text/css">
</head>
<body>

	<form method="post" name="writeform"
		action="/casa/board/notice/updatePro.do?pageNum=${pageNum}"
		enctype="multipart/form-data">

		<table border="1" width="700" cellpadding="0" cellspacing="0"
			align="center">
			<tr>
				<td><input type="text" size="75" maxlength="50" name="subject"
					value="${article.subject}" /> <input type="hidden" name="num"
					value="${article.num}"></td>
			<tr>
				<td><textarea name="content" rows="40" cols="80">${article.content}</textarea></td>
			<tr>
				<td>
				<c:if test="${x == 0}">
					<input type="file" name="save" />
				</c:if>
				<c:if test="${x == 1}">
				${article.file_content}<br />
				<input type="file" name="save" />
				</c:if>
				</td>

			</tr>
			<tr>
				<td colspan=2 align="center"><input type="submit" value="수정">
					<input type="button" value="목록"
					onclick="document.location.href='/casa/board/notice/list.do?pageNum=${pageNum}'">
				</td>
			</tr>

		</table>
	</form>

</body>
</html>