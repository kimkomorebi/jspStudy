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
		//1~6���� ������ �ʿ�
	int gamer = (int)(Math.random() * 6 + 1);
	int computer = (int)(Math.random() * 6 + 1);
	if(gamer > computer){//���̸� ��
%>
���̸� �� !! <%= gamer %> vs <%= computer %>
<%
	}else if(gamer == computer){//���º�
%>
���º� !! <%= gamer %> vs <%= computer %> 
<%
	}else {//��ǻ�� ��
%>
��ǻ�� �� !! <%= gamer %> vs <%= computer %> 
<%
	}
%>
</body>
</html>









