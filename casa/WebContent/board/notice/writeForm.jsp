<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form method="post" name="writeform" action="/study/ch19/writePro.do" onsubmit="return writeSave()">


       <input type="text" size="40" maxlength="50" name="subject" />

     <textarea name="content" rows="13" cols="40"></textarea> 

	 <input type="file" name="file_content" />
    
  <input type="submit" value="±Û¾²±â" >  
