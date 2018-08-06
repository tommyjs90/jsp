package kr.or.ddit.board.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import kr.or.ddit.board.model.BoardVo;

public class BoardService implements BoardServiceInf {

	/**
	* Method : getBoardList
	* 최초작성일 : 2018. 7. 5.
	* 작성자 : PC08
	* 변경이력 :
	* @return
	* Method 설명 : 게시글 목록 조회
	 */
	@Override
	public List<BoardVo> getBoardList() {
		List<BoardVo> boardList = new ArrayList<BoardVo>();
		
		// DB에서 조회가 되었다고 가정하고 임의의 값을 리턴
		boardList.add(new BoardVo("첫번째 글입니다.", "첫번째 내용입니다.", "zchu", "곰", new Date()));
		boardList.add(new BoardVo("두번째 글입니다.", "두번째 내용입니다.", "song", "청소송이", new Date()));
		boardList.add(new BoardVo("세번째 글입니다.", "세번째 내용입니다.", "yoon", "널잡이", new Date()));
		boardList.add(new BoardVo("네번째 글입니다.", "네번째 내용입니다.", "yo", "mc.the.요섭", new Date()));
		boardList.add(new BoardVo("다섯번째 글입니다.", "다섯번째 내용입니다.", "jin", "주먹", new Date()));
		
		return boardList;
	}

}
