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
	String menu = request.getParameter("MENU");//�޴��̸�
	String quantity = request.getParameter("NUM");//����
	String bread = request.getParameter("BREAD");//���̸�
	String quan = request.getParameter("QUAN");//������
	int grandTotal = findAllPrice(
			menu,quantity,bread,quan);//Ŀ��+�� �Ѱ�
// 	int breadPrice = findBreadTotal(bread,quan);//���Ѱ�
// 	int totalPrice = findTotal(menu, quantity);//Ŀ���Ѱ�
// 	int grandTotal = totalPrice + breadPrice;  
	//����� �����ִ� JSP(coffeeResult.jsp)�� ��ȯ
	//Redirect, Forward, Redirect/Forward(����)
// 	response.sendRedirect(
// 			"coffeeResult.jsp?TOTAL="+grandTotal);
	request.setAttribute("total", grandTotal);
	RequestDispatcher rd = 
		request.getRequestDispatcher("coffeeResult.jsp");
	rd.forward(request, response);
%>
<%!
	int findAllPrice(String m1,String m2,
			String m3,String m4){
		int drinkNum = Integer.parseInt(m2);//����� ����
		int breadNum = Integer.parseInt(m4);//�� ����
		int totalPrice = 0;
		switch(m1){
		case "A": totalPrice=totalPrice+(drinkNum*2000);
				break;
		case "B": totalPrice=totalPrice+(drinkNum*3000);
				break;
		case "C": totalPrice=totalPrice+(drinkNum*3500);
				break;
		case "D": totalPrice=totalPrice+(drinkNum*3300);
				break;
		case "E":totalPrice=totalPrice+(drinkNum*3800);
		}
		switch(m3){
		case "A": totalPrice=totalPrice+(drinkNum*1000);
				break;
		case "B": totalPrice=totalPrice+(drinkNum*2000);
				break;
		case "C": totalPrice=totalPrice+(drinkNum*500);
				break;
		case "D": totalPrice=totalPrice+(drinkNum*1500);
				break;
		case "E":totalPrice=totalPrice+(drinkNum*800);
		}
		return totalPrice;
	}
	int findBreadTotal(String bread, String number){
		int num = Integer.parseInt(number);
		int price = 0;
		if(bread.equals("A")){//�ֵ���:1000
			price = 1000;
		}else if(bread.equals("B")){//���ƻ�:2000
			price = 2000;
		}else if(bread.equals("C")){//ũ����:500
			price = 500;
		}else if(bread.equals("D")){//ȣ�л�:1500
			price = 1500;
		}else if(bread.equals("E")){//�����:800
			price = 800;	
		}
		return price * num;
	}
	int findTotal(String name,String number){
		int num = Integer.parseInt(number);
		int price = 0;
		if(name.equals("A")){//�Ƹ޸�ī��:2000
			price = 2000;
		}else if(name.equals("B")){//īǪġ��:3000
			price = 3000;
		}else if(name.equals("C")){//ī�����:3500
			price = 3500;
		}else if(name.equals("D")){//ī�����:3300
			price = 3300;
		}else if(name.equals("E")){//ī���ī:3800
			price = 3800;	
		}
		int totalPrice = price * num;//�Ѿ� ���
		return totalPrice;
	}
%>
</body>
</html>









