<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>

</head>
<body>
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.6.2/css/font-awesome.min.css">
<link href="top_style.css" rel="stylesheet"  type="text/css">
<center>
<table>
	<tr height="50"><td align="right"><jsp:include page="top1.jsp" flush="false"/></td></tr>
	<tr height="50"><td align="center"><jsp:include page="top2.jsp" flush="false"/></td></tr>
	<tr height="50"><td align="center"><jsp:include page="top3.jsp" flush="false"/></td></tr>
	<tr height=800"><td align="center"><jsp:include page="${content}" flush="false"/></td></tr>
	<tr height="50"><td align="center"><jsp:include page="bottom.jsp" flush="false"/></td></tr>
</table>
</center>
</body>
</html>