<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sandbox/useBeanTest.jsp</title>
</head>
<body>
	<h1>usebean 액션태그 연습</h1>
	<form name="frm1" method="post" action="useBean_ok.jsp">
		아이디 : <input type="text" name="userid"><br>		<!-- vo의 멤버변수명과 test의 name과 같고 ok에서 property와 동일해야 그대로 가져와짐 -->
		이름 : <input type="text" name="name"><br>
		번호 : <input type="text" name="no"><br>
		<input type="submit" value="전송">
	</form>

</body>
</html>




