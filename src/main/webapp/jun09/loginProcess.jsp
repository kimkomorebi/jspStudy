<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String id = request.getParameter("ID");
	String password = request.getParameter("PWD");
	String result = "";
	if(id.equals(password)){//�α��� ����
		result = "YES";
	}else {//�α��� ����
		result = "NO";
	}
	response.sendRedirect(
		"loginResult.jsp?R="+result+"&ID="+id);
%>
</body>
</html>








