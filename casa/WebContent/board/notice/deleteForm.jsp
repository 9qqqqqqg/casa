<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <form method="POST" name="delForm"  action="/casa/board/notice/deletePro.do?pageNum=${pageNum}" 
   onsubmit="return deleteSave()"> 
     <input type="hidden" name="num" value="${num}">
 <input type="submit" value="����" >
 <input type="button" value="���" 
       onclick="document.location.href='/casa/board/notice/list.do?pageNum=${pageNum}'">     
 