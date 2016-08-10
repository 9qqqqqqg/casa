<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<a href="#login_form" id="login_pop">로그인</a> | <a href=#>장바구니</a> | <a href=#>회원가입</a> | <a href=#>주문/배송조회 </a> |<a href=#>매장안내</a> | <a href=#>고객센터</a>

<a href="#x" class="overlay" id="login_form"></a>
        <div class="popup">
            <p>Please enter your login and password here</p>
            <div>
                <label for="login">Login</label>
                <input type="text" id="login" value="" />
            </div>
            <div>
                <label for="password">Password</label>
                <input type="password" id="password" value="" />
            </div>
            <input type="button" value="Log In" />

            <a class="close" href="#close"></a>
        </div>