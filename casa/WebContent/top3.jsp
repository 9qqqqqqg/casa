<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>�޴���</title>

</head>
<body>
<nav>
  <div class="container">
    <ul>
     <li> <a href="/test/category.do?ctgcode=1">ħ�ǰ���<i class='fa fa-angle-down'></i></a>
        <ul>
          <li><a href="/test/category.do?ctgcode=11">������/��Ź</a></li>
          <li><a href="/test/category.do?ctgcode=12">ħ��</a></li>
          <li><a href="/test/category.do?ctgcode=13">��Ʈ����</a></li>
          <li><a href="/test/category.do?ctgcode=14">����</a></li>
          <li><a href="/test/category.do?ctgcode=15">ȭ���/�ſ�/����</a></li>
        </ul>
      </li>
      <li> <a href="#">�Žǰ���<i class='fa fa-angle-down'></i></a>
        <ul>
          <li><a href="#">���׼���</a></li>
          <li><a href="#">�к긯����</a></li>
          <li><a href="#">��Ŭ���̳ʼ���</a></li>
          <li><a href="#">�Ž���</a></li>
          <li><a href="#">�Ž����̺�</a></li>
        </ul>
      </li>
      <li> <a href="#">�ֹ氡��<i class='fa fa-angle-down'></i></a>
        <ul>
          <li><a href="#">��Ź��Ʈ</a></li>
          <li><a href="#">��Ź</a></li>
          <li><a href="#">��Ź����</a></li>
          <li><a href="#">�ֹ����</a></li>
        </ul>
      </li>
       <li> <a href="#">Ȩ���ǽ�<i class='fa fa-angle-down'></i></a>
        <ul>
          <li><a href="#">å��</a></li>
          <li><a href="#">å��/å����</a></li>
          <li><a href="#">����</a></li>
          <li><a href="#">��������</a></li>
          <li><a href="#">����/������ü��</a></li>
        </ul>
      </li>
       <li> <a href="#">�ڳ��<i class='fa fa-angle-down'></i></a>
        <ul>
          <li><a href="#">��Ŭħ��</a></li>
          <li><a href="#">�̱۸�Ʈ</a></li>
          <li><a href="#">����/����</a></li>
          <li><a href="#">å��</a></li>
          <li><a href="#">å��/å����</a></li>
          <li><a href="#">�л�����</a></li>
          <li><a href="#">����/��������</a></li>
          <li><a href="#">�к긯</a></li>
          <li><a href="#">���ڼ�ǰ</a></li>
        </ul>
      </li>
       <li> <a href="#">�к긯<i class='fa fa-angle-down'></i></a>
        <ul>
          <li><a href="#">Category One</a></li>
          <li><a href="#">Category Two</a></li>
          <li><a href="#">Category Three</a></li>
        </ul>
      </li>
       <li> <a href="#">Ȩ���׸���<i class='fa fa-angle-down'></i></a>
        <ul>
          <li><a href="#">Category One</a></li>
          <li><a href="#">Category Two</a></li>
          <li><a href="#">Category Three</a></li>
        </ul>
      </li>
       <li> <a href="#">Űģ���̴�<i class='fa fa-angle-down'></i></a>
        <ul>
          <li><a href="#">Category One</a></li>
          <li><a href="#">Category Two</a></li>
          <li><a href="#">Category Three</a></li>
        </ul>
      </li>
    </ul>
  </div>
</nav>
<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script> 
<script>
$('nav li').hover(
  function() {
	  $('ul', this).stop().slideDown(200);
  },
	function() {
    $('ul', this).stop().slideUp(200);
  }
);
</script>
</body>
</html>
