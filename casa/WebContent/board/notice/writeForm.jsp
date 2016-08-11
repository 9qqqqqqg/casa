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
		action="/casa/board/notice/writePro.do" enctype="multipart/form-data">

		<table border="1" width="700" cellpadding="0" cellspacing="0"
			align="center">
			<tr>
				<td><input type="text" size="75" maxlength="50" name="subject"
					placeholder="subject" /></td>
			<tr>
				<td><textarea name="content" rows="40" cols="80"
						placeholder="content"></textarea></td>
			<tr>
				<td><input type="file" name="save" /></td>
			</tr>

			<tr>
				<td align="right"><input type="submit" value="±Û¾²±â"></td>
			</tr>

		</table>
	</form>
</body>
</html>