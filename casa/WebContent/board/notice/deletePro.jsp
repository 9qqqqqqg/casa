<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<c:if test="${check==1}">
<meta http-equiv="Refresh" content="0;url=/casa/board/notice/list.do?pageNum=${pageNum}">
</c:if>
<c:if test="${check==0}">
관리자만 삭제 가능합니다.
</c:if>