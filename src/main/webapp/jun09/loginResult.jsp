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
	String result = request.getParameter("R");
	String id = request.getParameter("ID");
	if(result.equals("YES")){
		out.print(
			"<h2>�α��� �Ǿ����ϴ�. ȯ���մϴ�~"+id+"��~</h2>");
	}else {
		out.print(
		"<h2>�α��� ���� �ʾҽ��ϴ�. ������ ��ȣ�� Ȯ���ϼ���.</h2>");
	}
%>
</body>
</html>









