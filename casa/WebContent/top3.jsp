<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<title>메뉴바</title>

</head>
<body>
<nav>
  <div class="container">
    <ul>
     <li> <a href="/test/category.do?ctgcode=1">침실가구<i class='fa fa-angle-down'></i></a>
        <ul>
          <li><a href="/test/category.do?ctgcode=11">서랍장/협탁</a></li>
          <li><a href="/test/category.do?ctgcode=12">침대</a></li>
          <li><a href="/test/category.do?ctgcode=13">매트리스</a></li>
          <li><a href="/test/category.do?ctgcode=14">옷장</a></li>
          <li><a href="/test/category.do?ctgcode=15">화장대/거울/스툴</a></li>
        </ul>
      </li>
      <li> <a href="#">거실가구<i class='fa fa-angle-down'></i></a>
        <ul>
          <li><a href="#">가죽소파</a></li>
          <li><a href="#">패브릭소파</a></li>
          <li><a href="#">리클라이너소파</a></li>
          <li><a href="#">거실장</a></li>
          <li><a href="#">거실테이블</a></li>
        </ul>
      </li>
      <li> <a href="#">주방가구<i class='fa fa-angle-down'></i></a>
        <ul>
          <li><a href="#">식탁세트</a></li>
          <li><a href="#">식탁</a></li>
          <li><a href="#">식탁의자</a></li>
          <li><a href="#">주방수납</a></li>
        </ul>
      </li>
       <li> <a href="#">홈오피스<i class='fa fa-angle-down'></i></a>
        <ul>
          <li><a href="#">책상</a></li>
          <li><a href="#">책장/책꽂이</a></li>
          <li><a href="#">의자</a></li>
          <li><a href="#">수납가구</a></li>
          <li><a href="#">선반/디자인체어</a></li>
        </ul>
      </li>
       <li> <a href="#">자녀방<i class='fa fa-angle-down'></i></a>
        <ul>
          <li><a href="#">싱클침대</a></li>
          <li><a href="#">싱글매트</a></li>
          <li><a href="#">서랍/옷장</a></li>
          <li><a href="#">책상</a></li>
          <li><a href="#">책장/책꽃이</a></li>
          <li><a href="#">학생의자</a></li>
          <li><a href="#">수납/소형가구</a></li>
          <li><a href="#">패브릭</a></li>
          <li><a href="#">데코소품</a></li>
        </ul>
      </li>
       <li> <a href="#">패브릭<i class='fa fa-angle-down'></i></a>
        <ul>
          <li><a href="#">Category One</a></li>
          <li><a href="#">Category Two</a></li>
          <li><a href="#">Category Three</a></li>
        </ul>
      </li>
       <li> <a href="#">홈인테리어<i class='fa fa-angle-down'></i></a>
        <ul>
          <li><a href="#">Category One</a></li>
          <li><a href="#">Category Two</a></li>
          <li><a href="#">Category Three</a></li>
        </ul>
      </li>
       <li> <a href="#">키친다이닝<i class='fa fa-angle-down'></i></a>
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
