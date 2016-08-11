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

<script language="JavaScript">
function chkSch(form){
		if(form.sval.value){
			return true;
		}
		alert("검색어를 입력하세요");
		form.sval.focus();
		return false;
	}
	</script>


	<table border="1" width="700" cellpadding="0" cellspacing="0"
		align="center">
		<tr>
			<td align="left"><h3>공지사항</h3></td>
			<td align="right">홈 > 고객센터 > 공지사항</td>
		</tr>
		<tr>
			<td align="right" colspan="2">
			
			<form method="get" action="/casa/board/notice/search.do" name="searchForm" onSubmit="return chkSch(this);">
				<input type="hidden" name="pageNum" value="${pageNum}">
				<input type=text name="sval" value="${sval}">
				<input type="submit" value="검색 ">
				</form>
				</td>
		</tr>
		<c:if test="${count == 0}">
			<tr>
				<td align="center">게시판에 저장된 글이 없습니다.</td>
			</tr>
	</table>
	</c:if>
	<c:if test="${count > 0}">
		<table border="1" width="700" cellpadding="0" cellspacing="0"
			align="center">
			<tr height="30">
				<td width="100" align="center">번호</td>
				<td width="auto" align="center">제목</td>
				<td width="100" align="center">등록일</td>
				<td width="100" align="center">조회수</td>
			</tr>

			<c:forEach var="article" items="${articleList}">

				<tr height="30">
					<td align="center">${article.num}</td>
					<td align="left"><a
						href="/casa/board/notice/content.do?num=${article.num}&pageNum=${currentPage}">
							${article.subject}</a></td>

					<td align="center">${sdf.format(article.reg_date)}</td>
					<td align="center">${article.readcount}</td>
				</tr>
			</c:forEach>

		</table>

	</c:if>

	<table border="1" width="700" cellpadding="0" cellspacing="0"
		align="center">
		<tr>
			<td align="right"><a href="/casa/board/notice/writeForm.do">글쓰기</a></td>
		</tr>
		<tr align="center">
			<td><c:if test="${count > 0}">
					<c:set var="pageCount"
						value="${count / pageSize + ( count % pageSize == 0 ? 0 : 1)}" />
					<c:set var="pageBlock" value="${10}" />
					<fmt:parseNumber var="result" value="${currentPage / 10}"
						integerOnly="true" />
					<c:set var="startPage" value="${result * 10 + 1}" />
					<c:set var="endPage" value="${startPage + pageBlock-1}" />
					<c:if test="${endPage > pageCount}">
						<c:set var="endPage" value="${pageCount}" />
					</c:if>

					<c:if test="${startPage > 10}">
						<a href="/casa/board/notice/list.do?pageNum=${startPage - 10 }${pageReturn}">[이전]</a>
					</c:if>

					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<a href="/casa/board/notice/list.do?pageNum=${i}${pageReturn}">[${i}]</a>
					</c:forEach>

					<c:if test="${endPage < pageCount}">
						<a href="/casa/board/notice/list.do?pageNum=${startPage + 10}${pageReturn}">[다음]</a>
					</c:if>
				</c:if></td>
		</tr>
	</table>