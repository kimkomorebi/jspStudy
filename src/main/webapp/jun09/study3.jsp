<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
var a = "KOREA"; var b = "���ѹα�";
if(a == b){
	
}else {
	
}
</script>
<%
	//�ڹٿ��� ���ڿ��� ��(�ǹ�:1.��ġ��,2.�����)
	String msg1 = "KOREA"; String msg2 = "KOREA";
	String msg3 = new String("KOREA");
	//2.�� ���ڿ��� �����
	if("KOREA".equals(msg1)){
		out.print("<h2>2.����</h2>");	
	}else{
		out.print("<h2>2.�ٸ���</h2");
	}
	if(msg1.equals(msg3)){
		out.print("<h2>1.����</h2>");
	}else {
		out.print("<h2>1.�ٸ���</h2");
	}
	//1.�� ���ڿ��� ��ġ(�ּ�)��
	if(msg1 == msg2){
		out.print("<h2>����</h2>");
	}else{
		out.print("<h2>�ٸ���</h2>");
	}
%>
</body>
</html>









