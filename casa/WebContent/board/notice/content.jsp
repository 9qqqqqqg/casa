<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table border="1" width="700" cellpadding="0" cellspacing="0"
	align="center">
	<tr>
		<td width="100" align="center">번호</td>
		<td width="auto" align="center">제목</td>
		<td width="100" align="center">등록일</td>
	</tr>
	<tr>
		<td align="center">${article.num}</td>
		<td align="left">${article.subject}</td>
		<td align="center">${sdf.format(article.reg_date)}</td>
	</tr>

	<tr>
		<td colspan="3"><img src="${article.file_content}" /><br />
		${article.content}</td>

	</tr>
 <tr height="30">      
    <td colspan="3" align="right" > 
	  <input type="button" value="수정" 
       onclick="document.location.href='/casa/board/notice/updateForm.do?num=${article.num}&pageNum=${pageNum}'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
	  <input type="button" value="삭제" 
       onclick="document.location.href='/casa/board/notice/deleteForm.do?num=${article.num}&pageNum=${pageNum}'">
	   &nbsp;&nbsp;&nbsp;&nbsp;
       <input type="button" value="목록" 
       onclick="document.location.href='/casa/board/notice/list.do?pageNum=${pageNum}'">
    </td>
  </tr>
</table>