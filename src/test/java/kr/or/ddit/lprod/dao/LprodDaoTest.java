package kr.or.ddit.lprod.dao;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.lprod.model.LprodVo;

import org.junit.Before;
import org.junit.Test;

public class LprodDaoTest {
	
	private LprodDaoInf lprodDao;
	
	@Before
	public void setup() {
		lprodDao = new LprodDao();
	}

	/**
	* Method : selectAllLprodTest
	* 최초작성일 : 2018. 7. 11.
	* 작성자 : PC08
	* 변경이력 :
	* Method 설명 : 전체 물품 리스트 조회 테스트
	*/
	@Test
	public void selectAllLprodTest() {
		/***Given***/

		/***When***/
		List<LprodVo> lprodList = lprodDao.selectAllLprod();

		/***Then***/
		assertEquals(14, lprodList.size());

	}
	
	/**
	* Method : getLprodPageListTest
	* 최초작성일 : 2018. 7. 11.
	* 작성자 : PC08
	* 변경이력 :
	* Method 설명 : 물품 페이지 리스트 조회 테스트
	*/
	@Test
	public void getLprodPageListTest() {
		/***Given***/
		Map<String, Integer> map = new HashMap<String, Integer>();
		int page = 1;
		int pageSize = 10;
		map.put("page", page);
		map.put("pageSize", pageSize);

		/***When***/
		List<LprodVo> lprodList = lprodDao.getLprodPageList(map);

		/***Then***/
		assertEquals(10, lprodList.size());

	}
	
	@Test
	public void getLprodTotCntTest() {
		/***Given***/

		/***When***/
		int cnt = lprodDao.getLprodTotCnt();
		
		/***Then***/
		assertEquals(14, cnt);

	}

}
