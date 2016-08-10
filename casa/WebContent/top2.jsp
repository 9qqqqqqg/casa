<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<table>
<tr>
	<td align="center">
		<a href="main.do"><img src="image/top_logo.gif" /></a>
	</td>
	<td align="center">
		<select name="search_op">
		<option selected>통합검색</option>
		<option>브랜드</option>
		<option>상품명</option>
		<option>상품코드</option>
		</select>
		<input type="text" name="search_bar"/>
		<input type="button" value="검색" onClick="javascript:window.location='#'"/>
	</td>
	<td align="center">
		<a href="#"><img src="image/top2_best.png"/></a>&nbsp;&nbsp;
		<a href="#"><img src="image/top2_sale.png"/></a>&nbsp;&nbsp;
		<a href="#"><img src="image/top2_new.png"/></a>&nbsp;&nbsp;
		<a href="#"><img src="image/top2_event.png"/></a>
		
	</td>
</tr>
</table>