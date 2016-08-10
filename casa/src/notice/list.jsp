<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table border="1" width="700" cellpadding="0" cellspacing="0" align="center"> 
    <tr> 
      <td>번호</td> 
      <td>제목</td> 
      <td>등록일</td> 
      <td>조회수</td> 
    </tr>

<c:forEach var="article" items="${articleList}">

<tr>
<td>
<a href="/casa/notice/content.do?num=${article.num}&pageNum=${currentPage}">
     ${article.subject}</a> </td>

<td>${article.reg_date}</td>
<td>${article.readcount}</td>


  </tr>
  </c:forEach>

  </table>