<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- oracle DB의 student 테이블을 조회하여 화면에 출력 -->
<%

	// DB작업에 필요한 객체 변수 선언
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;		// 쿼리문이 'select'일 경우 필요
	
	try {
		// 1. 드라이버 로딩
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// 2. DB접속 : Connection객체 생성
		String url = "jdbc:oracle:thin:@localhost:1521:xe";	// 현재 컴퓨터에 oracle이 설치되어 있을 때 localhost
		String user = "pc08";
		String pass = "java";
		conn = DriverManager.getConnection(url, user, pass);
		
		// 3. Statement객체 생성(Statement객체는 Connection객체를 이용해서 생성한다)
		stmt = conn.createStatement();
		
		// 4. SQL문을 Statement객체를 이용하여 실행하고 실행 결과를 ResultSet객체에 저장한다.
		String sql = "select * from student";
		rs = stmt.executeQuery(sql);
		
		// 5. 결과 처리 : ResultSet객체에 저장되어 있는 자료를 반복문을 이용하여 차례로 읽어와 처리한다.
		
		// ResultSet객체에 담겨 있는 데이터(레코드)에 접근하기 위해
		// 현재 작업을 진행하는 레크드를 가리키는 것을 커서(Cursor)라 한다.
		// next()는 이 커서의 위치를 다음 레코드 위치로 이동시키고 그 자리에 데이터가 있으면 true, 없으면 false를 반환한다.
		
		while (rs.next()) {
			out.write("std_num : " + rs.getInt("std_num") + " / ");
			out.write("std_name : " + rs.getString("std_name") + " / ");
			out.write("std_kor : " + rs.getInt("std_kor") + " / ");
			out.write("std_eng : " + rs.getInt("std_eng") + " / ");
			out.write("std_mat : " + rs.getInt("std_mat") + "<br>");
		}
		
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		if (rs!=null) try { rs.close(); } catch (SQLException e2) {}
		if (stmt!=null) try { stmt.close(); } catch (SQLException e2) {}
		if (conn!=null) try { conn.close(); } catch (SQLException e2) {}
	}

%>

</body>
</html>