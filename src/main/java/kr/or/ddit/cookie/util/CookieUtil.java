package kr.or.ddit.cookie.util;

public class CookieUtil {

	/**
	* Method : getCookie
	* 최초작성일 : 2018. 7. 6.
	* 작성자 : PC08
	* 변경이력 :
	* @param cookie
	* @param name
	* @return
	* Method 설명 : 쿠키 조회
	*/
	public String getCookie(String cookie, String name) {
		
		// cookie : userId=zchu; rememberMe=y; checkYn=n
		String[] cookies = cookie.split("; ");
		String cookieResult = "";
		
		// cookieStr : userId=zchu, rememberMe=y, checkYn=n
		for (String cookieStr : cookies) {
			String[] cookieNameValue = cookieStr.split("=");
			
			String cookieName = cookieNameValue[0];
			String cookieValue = cookieNameValue[1];
			
			if (name.equals(cookieName)) {
				cookieResult = cookieValue;
				break;
			}
		}
		
//		String cookieName = "";
//		for (int i = 0; i < cookies.length; i++) {
//			if (cookies[i].contains(name)) {
//				String[] result = cookies[i].split("=");
//				cookieName = result[1];
//			}
//		}
		
		return cookieResult;
	}

}
