package kr.or.ddit.student.service;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import kr.or.ddit.student.dao.StudentDao;
import kr.or.ddit.student.dao.StudentDaoInf;
import kr.or.ddit.student.model.StudentVo;

import org.junit.Before;
import org.junit.Test;

public class StudentServiceTest {

	StudentServiceInf studentService;
	
	// @Before --> @Test --> @After
	
	// 테스트 메소드 안에 중복되는 내용 : StudentService 구현체에 대한 생성 로직
	// --> @Before 어노테이션이 붙은 setup 메서드에 위임
	// 모든 테스트 메서드에서 StudentService 객체를 참조할 수 있게끔 클래스 변수로 생성할 필요가 있고
	// 클래스 변수를 setup메서드에서 초기화하는 로직이 필요
	// 테스트 메소드에서 StudentService를 생성하는 로직은 삭제
	
	@Before
	public void setup() {
		studentService = new StudentService();
	}
	
	/**
	* Method : selectAllStudentsTest
	* 최초작성일 : 2018. 7. 10.
	* 작성자 : PC08
	* 변경이력 :
	* Method 설명 : 학생 정보 전체 조회 테스트
	*/
	@Test
	public void selectAllStudentsTest() {
		
		/***Given***/

		/***When***/
		List<StudentVo> studentList = studentService.selectAllStudents();
		for (StudentVo vo : studentList) {
			System.out.println(vo);
		}

		/***Then***/
		assertEquals(25, studentList.size());

	}
	
	/**
	* Method : getStudentTest
	* 최초작성일 : 2018. 7. 10.
	* 작성자 : PC08
	* 변경이력 :
	* Method 설명 : 학생 정보 조회 테스트
	*/
	@Test	
	public void getStudentTest() {
		/***Given***/
		int id = 1;

		/***When***/
		StudentVo studentVo = studentService.getStudent(id);
		
		/***Then***/
		assertEquals(id, studentVo.getId());
		assertEquals("김마음", studentVo.getName());
		assertEquals(0, studentVo.getCall_cnt());
	}
	
	/**
	* Method : getStudentTestByVo
	* 최초작성일 : 2018. 7. 10.
	* 작성자 : PC08
	* 변경이력 :
	* Method 설명 : 학생 정보 조회 테스트
	*/
	@Test
	public void getStudentTestByVo() {
		/***Given***/
		StudentVo paramVo = new StudentVo();
		int id = 1;
		paramVo.setId(id);

		/***When***/
		StudentVo studentVo = studentService.getStudent(paramVo);

		/***Then***/
		assertEquals(id, studentVo.getId());
		assertEquals("김마음", studentVo.getName());
		assertEquals(0, studentVo.getCall_cnt());

	}
	
	/**
	* Method : getStudentPageListTest
	* 최초작성일 : 2018. 7. 10.
	* 작성자 : PC08
	* 변경이력 :
	* Method 설명 : 학생 페이지 리스트 조회 테스트
	*/
	@Test
	public void getStudentPageListTest() {
		
		/***Given***/
		Map<String, Integer> map = new HashMap<>();
		int page = 1;
		int pageSize = 10;
		map.put("page", page);
		map.put("pageSize", pageSize);
		
		/***When***/
		Map<String, Object> resultMap = studentService.getStudentPageList(map);
		
		// 학생 페이지 리스트
		List<StudentVo> pageList = (List<StudentVo>) resultMap.get("pageList");
		
		// 학생 전체 건수
		int totCnt = (int) resultMap.get("totCnt");

		/***Then***/
		assertEquals(10, pageList.size());	// 학생 페이지 리스트 건수에 대한 검증
		assertEquals(25, totCnt);			// 학생 전체 건수에 대한 검증

	}
	
	/**
	* Method : calculatePageNavi
	* 최초작성일 : 2018. 7. 11.
	* 작성자 : PC08
	* 변경이력 :
	* Method 설명 : 전체 건수를 인자로 페이지 네비게이션 사이즈를 구하는 테스트
	*/
	@Test
	public void calculatePageNavi() {
		/***Given***/
		int totCnt = 25;
		int pageSize = 10;
		
		int cnt = totCnt / pageSize;	// 몫
		int mod = totCnt % pageSize;	// 나머지
		
		if (mod > 0) {
			cnt++;
		}
		
		/***When***/
		double naviSize = (totCnt / pageSize);
		System.out.println(Math.ceil(totCnt / pageSize));
		System.out.println(Math.ceil((double)totCnt / (double)pageSize));
		System.out.println(Math.floor(totCnt / pageSize));

		/***Then***/

	}
	
	@Test
	public void studentUpdateTest() {
		/***Given***/
		StudentVo studentVo = new StudentVo();
		studentVo.setId(2);
		studentVo.setName("강병관");
		studentVo.setAddr1("대전광역시 중구 중앙로 76");
		studentVo.setAddr2("영민빌딩 2층 대덕인재개발원 207호");
		studentVo.setZipcd("34940");
		studentVo.setPic("sally.png");
		studentVo.setPicpath("D:\\A_TeachingMaterial\\7.JspSpring\\fileUpload");
		studentVo.setPicname("f939a9f1-39bd-4028-9d4b-fb2b190b684b");

		/***When***/
		int updateCnt = studentService.studentUpdate(studentVo);

		/***Then***/
		assertEquals(1, updateCnt);

	}

}





