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
	if("D".equals(result)){
		out.print("<h3>���º��Դϴ�</h3>");	
	}else if(result.equals("C")){
		out.print("<h3>��ǻ�� �¸��Դϴ�.!!!</h3>");
	}else if(result.equals("G")){
		out.print("<h3>���̸��� �¸��Դϴ�.!!!</h3>");
	}
// 	switch(result){
// 	case "D":
// 				out.print("<h3>���º��Դϴ�</h3>");	
// 				break;
// 	case "C":
// 				out.print("<h3>��ǻ�� �¸��Դϴ�.!!!</h3>");
// 				break;
// 	case "G":
// 				out.print("<h3>���̸��� �¸��Դϴ�.!!!</h3>");
// 	}
%>
</body>
</html>





