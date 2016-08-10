<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">
<link href="/top_style.css" rel="stylesheet" type="text/css">
</head>
<body>
<table border="1" width="700" cellpadding="0" cellspacing="0"
	align="center">
	<tr>
		<td>번호</td>
		<td>제목</td>
		<td>등록일</td>
		<td>조회수</td>
	</tr>

	<c:forEach var="article" items="${articleList}">

		<tr>
			<td><a
				href="/casa/notice/content.do?num=${article.num}&pageNum=${currentPage}">
					${article.subject}</a></td>

			<td>${article.reg_date}</td>
			<td>${article.readcount}</td>


		</tr>
	</c:forEach>

</table>