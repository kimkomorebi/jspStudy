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
	//��ǻ�͸� ���ؼ� ������ ���Ѵ�.(1~2)
	int computer = (int)(Math.random() * 2 + 1);
	String gamer = request.getParameter("GAMER");
	
	int gamerInt = Integer.parseInt(gamer);
	//���ڿ��� ������ �ٲ۴�.
	String result = "";//������ ����� ������ ���� ����
	if(computer == gamerInt){//���̸Ӱ� �̱� ���
		result = "G";
	}else {//��ǻ�Ͱ� �̱� ���
		result = "C";
	}
	response.sendRedirect("study2_2.jsp?R="+result);
%>

</body>
</html>








