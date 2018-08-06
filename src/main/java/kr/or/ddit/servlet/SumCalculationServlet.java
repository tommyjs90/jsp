package kr.or.ddit.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SumCalculationServlet
 */
@WebServlet("/sumCalculationServlet")
public class SumCalculationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// encoding 설정
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charget=utf-8");
		
		int start = Integer.parseInt(request.getParameter("start"));
		int end = Integer.parseInt(request.getParameter("end"));
		
		int result = 0;
		
		if (start > end) {
			result = 0;
		} else {
			for (int i = start; i <= end; i++) {
				result += i;
			}
		}
		
		//request.getParameter 사용자가 보낸 파라미터를 받아오는 작업
		//System.out.println("sum = " + sum);
		
		// request객체에 일시적으로 값을 저장하는 방법
		request.setAttribute("sumResult", result);
		// RequestDispatcher rd = request.getRequestDispatcher("/jsp/sumResult.jsp");
		// rd.forward(request, response);
		
		// session에 sumResult를 저장한다
		HttpSession session = request.getSession();
		session.setAttribute("sumResult", result);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/sumResult.jsp");
		rd.forward(request, response);
		
	}

}
