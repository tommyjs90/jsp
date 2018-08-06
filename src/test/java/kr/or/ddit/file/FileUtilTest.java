package kr.or.ddit.file;

import static org.junit.Assert.*;

import org.junit.Test;

public class FileUtilTest {

	/**
	* Method : getFileNameTest
	* 최초작성일 : 2018. 7. 17.
	* 작성자 : PC08
	* 변경이력 :
	* Method 설명 : getFileName Test
	*/
	@Test
	public void getFileNameTest() {
		/***Given***/
		String contentDisposition = "form-data; name=\"uploadFile\"; filename=\"sally.png\"";

		/***When***/
		String fileName = FileUtil.getFileName(contentDisposition);

		/***Then***/
		assertEquals("sally.png", fileName);

	}

}
