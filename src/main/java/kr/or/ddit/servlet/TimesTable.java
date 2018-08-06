package kr.or.ddit.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TimesTable
 */
@WebServlet("/TimesTable")
public class TimesTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimesTable() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw = response.getWriter();
		pw.write("<!DOCTYPE html>");
		pw.write("<html>");
		pw.write("<head>");
		pw.write("<meta charset = \"UTF-8\">");
		pw.write("<title>Insert title here</title>");
		pw.write("<style>");
		pw.write("body {padding-top:50px}");
		pw.write("h1 {text-align:center}");
		pw.write("table {background-color:#ddd}");
		pw.write("table td {padding:10px;background-color:#fff}");
		pw.write("</style>");
		pw.write("</head>");
		pw.write("<body>");
		pw.write("<h1>TimesTable</h1>");
		pw.write("<table cellpadding=\"0\" cellspacing=\"1\" border=\"0\" align=\"center\">");
		for (int i = 1; i < 10; i++) {
			pw.write("<tr>");
			for (int j = 2; j < 10; j++) {
				pw.write("<td>");
				pw.write(j + " * " + i + " = " + (j*i));
				pw.write("</td>");
			}
			pw.write("</tr>");
		}
		pw.write("</table>");
		pw.write("</body>");
		pw.write("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
