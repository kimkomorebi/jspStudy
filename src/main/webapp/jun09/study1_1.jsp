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
	//��ǻ�͸� ���ؼ� ������ ���Ѵ�.(1~3)
	int computer = (int)(Math.random() * 3 + 1);
	String gamer = request.getParameter("GAMER");
	
	int gamerInt = Integer.parseInt(gamer);
	//���ڿ��� ������ �ٲ۴�.
	String result = "";//������ ����� ������ ���� ����
	if(computer == gamerInt){//���º��� ���
		result = "D";
	}else if((gamerInt==1 && computer==3) || 
			(gamerInt==2 && computer==1) || 
			(gamerInt==3 && computer==2)){//���̸Ӱ� �̱� ���
		result = "G";
	}else {//��ǻ�Ͱ� �̱� ���
		result = "C";
	}
	response.sendRedirect("study1_2.jsp?R="+result);
%>
</body>
</html>









