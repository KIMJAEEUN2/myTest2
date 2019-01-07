<%@page import="com.herbmall.test.SimpleVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean_ok.jsp</title>
</head>
<body>
<%
	//기존 방식
	request.setCharacterEncoding("utf-8");
	/* String userid=request.getParameter("userid");
	String name=request.getParameter("name");
	String no=request.getParameter("no");
	
	SimpleVO vo = new SimpleVO();
	vo.setUserid(userid);
	vo.setNo(Integer.parseInt(no));
	vo.setName(name); */
	
%>
<jsp:useBean id="simpleVO" class="com.herbmall.test.SimpleVO" 
					scope="page"></jsp:useBean>				<!-- useBean액션태그 - new객체생성과 같은 역할(class명 fullName -->
<%-- <jsp:setProperty property="userid" name="simpleVO"/>	<!-- vo의 멤버변수명과 test의 name과 같고 ok에서 property와 동일해야 그대로 가져와짐 -->
<jsp:setProperty property="name" name="simpleVO"/>
<jsp:setProperty property="no" name="simpleVO"/> --%>	
<jsp:setProperty property="*" name="simpleVO"/>				<!-- 위의 문장들을 한번에 -->
<h1>usebean 이용 - 파라미터</h1>
<%-- <p>userid :  <%=vo.getUserid() %></p>
<p>no :  <%=vo.getNo() %></p>
<p>name :  <%=vo.getName() %></p> --%>
<p><jsp:getProperty property="userid" name="simpleVO"/></p>
<p><jsp:getProperty property="name" name="simpleVO"/></p>
<p><jsp:getProperty property="no" name="simpleVO"/></p>

</body>
</html>
