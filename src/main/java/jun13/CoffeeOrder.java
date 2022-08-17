package jun13;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CoffeeOrder
 */
@WebServlet("/jun13/coffeeOrder.do")
public class CoffeeOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CoffeeOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String drink=request.getParameter("MENU");
		String num=request.getParameter("NUM");
		String bread=request.getParameter("BREAD");
		String su=request.getParameter("QUAN");
		int drinkNum = Integer.parseInt(num);
		int breadNum = Integer.parseInt(su);
		int price = 0;//������� ������ ���� ���� ����
		if(drink.equals("A")){//�Ƹ޸�ī��:2000
			price = 2000;
		}else if(drink.equals("B")){//īǪġ��:3000
			price = 3000;
		}else if(drink.equals("C")){//ī�����:3500
			price = 3500;
		}else if(drink.equals("D")){//ī�����:3300
			price = 3300;
		}else if(drink.equals("E")){//ī���ī:3800
			price = 3800;	
		}
		int breadPrice = 0;//�������� ���� ���� ����
		if(bread.equals("A")){//�ֵ���:1000
			breadPrice = 1000;
		}else if(bread.equals("B")){//���ƻ�:2000
			breadPrice = 2000;
		}else if(bread.equals("C")){//ũ����:500
			breadPrice = 500;
		}else if(bread.equals("D")){//ȣ�л�:1500
			breadPrice = 1500;
		}else if(bread.equals("E")){//�����:800
			breadPrice = 800;	
		}
		int total=(price*drinkNum)+(breadPrice*breadNum);
		//coffeeResult.jsp�� ��ȯ
		//1.Redirect/2.Forward/3.�������(����)
		response.sendRedirect(
			"coffeeResult.jsp?TOTAL="+total);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
