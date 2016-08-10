<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
    
<script>
var HBCODE= new Array();
HBCODE[0] = new Array();
HBCODE[0][0] = new Array();
HBCODE[0][0][0] = '침실가구';
HBCODE[0][0][1] = '거실가구';
HBCODE[0][0][2] = '주방가구';
HBCODE[0][0][3] = '홈오피스';
HBCODE[0][0][4] = '자녀방';
HBCODE[0][0][5] = '홈인테리어';
HBCODE[0][0][6] = '키친다이닝';
HBCODE[0][1] = new Array();
HBCODE[0][1][0]= 'DEVELOP';
HBCODE[0][1][1] = 'VB';
HBCODE[0][1][2] = 'PB';
HBCODE[0][2] = new Array();
HBCODE[0][2][0]= 'HARDWARE';
HBCODE[0][2][1] = 'TIP';
HBCODE[0][2][2] = 'QNA';
HBCODE[0][3] = new Array();
HBCODE[0][3][0]= 'MULTIMEDIA';
HBCODE[0][3][1] = 'MUSIC';
HBCODE[0][3][2] = 'MUVIE';
HBCODE[0][4] = new Array();
HBCODE[0][4][0]= 'COMICS';
HBCODE[0][4][1] = 'JAIN';
HBCODE[0][4][2] = 'DUTOMAK';
HBCODE[0][5] = new Array();
HBCODE[0][5][0]= 'NEWSINFO';
HBCODE[0][5][1] = 'NEWS';
HBCODE[0][5][2] = 'INFO';
HBCODE[0][6] = new Array();
HBCODE[0][6][0]= 'ETC';
HBCODE[0][6][1] = 'MEMBER';
HBCODE[0][6][2] = 'PDS';

function SetCtg1(objCtg1,objCtg2){
    objCtg1.length=1;
    var i ;
    for (i=0;i<HBCODE[0].length;i++){
            objCtg1.options[i] = new Option(HBCODE[0][i][0],i);
    }
    SetCtg2(objCtg1,objCtg2);
}
function SetCtg2(objCtg1,objCtg2){
    objCtg2.length=0;
    var i ;
    var k = objCtg1.selectedIndex;
    for (i=1;i<HBCODE[0][k].length;i++){
            objCtg2.options[i] = new Option(HBCODE[0][k][i],HBCODE[0][k][i]);
    }
}

function ShowMyValue(objSelect){
    alert(objSelect.value);        
}
</script>
<body onload=SetCtg1(ctg1,ctg2);>
<form name="inputform" method="post" action="register_goods_pro.do" enctype=”multipart/form=data” >
<table>
<tr><td>상품코드</td><td>${goods_code}</td></tr>
<tr>
<td>카테고리</td>
<td>
	<select name=ctg1 onchange=SetCtg2(this,ctg2);></select>
	<select name=ctg2 onchange=ShowMyValue(this);></select>
	</td>
</tr>
<tr>
	<td>상품명</td><td><input type="text" name="goods_name"/></td>
</tr>
<tr>
	<td>글제목</td><td><input type="text" name="subject"/></td>
</tr>
<tr>
	<td>메인이미지</td><td><input type="file" /></td>
</tr>
<tr>
	<td>브랜드</td><td><input type="text" name="brand"/></td>
</tr>
<tr>
	<td>가격</td><td><input type="text" name="price"/></td>
</tr>
<tr>
	<td>적립포인트</td><td><input type="text" name="point"/></td>
</tr>
<tr>
	<td>상품상세정보</td><td><textArea name="goods_detail"></textArea></td>
</tr>
<tr><td colspan="2">
	<input type="submit" value="등록" />
	<input type="reset" />
	<input type="button" value="취소" />
	</td>
</tr>
</table>
</form>

</body>