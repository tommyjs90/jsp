package kr.or.ddit.lprod.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import kr.or.ddit.lprod.model.LprodVo;
import kr.or.ddit.mybatis.SqlMapSessionFactory;

public class LprodDao implements LprodDaoInf {
	
	private SqlSessionFactory sqlSessionfactory = SqlMapSessionFactory.getSqlSessionFactory();

	/**
	* Method : selectAllLprod
	* 최초작성일 : 2018. 7. 11.
	* 작성자 : PC08
	* 변경이력 :
	* @return
	* Method 설명 : 전체 물품 리스트 조회
	*/
	@Override
	public List<LprodVo> selectAllLprod() {
		SqlSession session = sqlSessionfactory.openSession();
		List<LprodVo> lprodList = session.selectList("lprod.selectAllLprod");
		session.close();
		
		return lprodList;
	}

	/**
	* Method : getLprodPageList
	* 최초작성일 : 2018. 7. 11.
	* 작성자 : PC08
	* 변경이력 :
	* @param map
	* @return
	* Method 설명 : 물품 페이지 리스트 조회
	*/
	@Override
	public List<LprodVo> getLprodPageList(Map<String, Integer> map) {
		SqlSession session = sqlSessionfactory.openSession();
		List<LprodVo> lprodList = session.selectList("lprod.getLprodPageList", map);
		session.close();
		
		return lprodList;
	}

	/**
	* Method : getLprodTotCnt
	* 최초작성일 : 2018. 7. 11.
	* 작성자 : PC08
	* 변경이력 :
	* @return
	* Method 설명 : 전체 건수 조회
	*/
	@Override
	public int getLprodTotCnt() {
		SqlSession session = sqlSessionfactory.openSession();
		int cnt = session.selectOne("lprod.getLprodTotCnt");
		session.close();
		
		return cnt;
	}
	
	

}
