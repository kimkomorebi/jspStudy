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
	//String total = request.getParameter("TOTAL");
	int total = (int)request.getAttribute("total");
	out.print("<h2>�ֹ��� �ּż� �����մϴ�~</h2>");
	out.print("<h2>�ֹ� �Ѿ�:"+total+"��</h2>");
%>
</body>
</html>








