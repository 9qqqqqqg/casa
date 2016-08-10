<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<html>
<head>
<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">
<link href="top_style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<form method="post" name="writeform"
		action="/casa/board/notice/writePro.casa"
		enctype=¡±multipart/form=data¡±>

		<table width="700" align="center">
			<tr>
				<td><input type="text" size="40" maxlength="50" name="subject"
					placeholder="subject" /></td>
			<tr>
				<td><textarea name="content" rows="13" cols="40"
						placeholder="content"></textarea></td>
			<tr>
				<td><input type="file" name="save" /> <input
					type="submit" value="±Û¾²±â"></td>
			</tr>



		</table>
</body>
</html>