package com.javalab.board.mapper;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.javalab.board.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;
/**
 * 단위테스트
 * - SpringJUnit4ClassRunner 의존성이 안들어오는 경우 pom.xml에 spring-test 확인할것.
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
        "file:src/main/webapp/WEB-INF/spring/root-context.xml"})
@Slf4j	// import lombok.extern.slf4j.Slf4j;
public class MemberMapperTest {
	 
	// 매퍼 인터페이스 의존성 주입
	@Autowired
	private MemberMapper memberMapper;
	
	/**
	 * 매퍼 인터페이스의 의존성 주입이 정상적으로 되는지 확인하는 테스트 메소드
	 */
	@Test @Ignore
	public void testMemberMapper() {
		assertNotNull(memberMapper);		
		log.info("memberMapper 객체 : " + memberMapper);
	}

	 // 회원 등록 테스트
	 @Test @Ignore
	 public void testCreateMember() {
		 // 저장할 객체 생성
		 MemberVo memberVo = new MemberVo();
		 memberVo.setMemberId("java2");
		 memberVo.setPassword("1234");
		 memberVo.setName("hong2");
		 memberVo.setEmail("abcd@a.com");
		 
		 // 객체 저장
		 int result = memberMapper.createMember(memberVo);
		 assertTrue(result > 0);
		 log.info("저장된 행수 : " + result);
	 }
	 
	 // 게시물 수정 테스트
//	 @Test @Ignore
//	 public void testUpdateBoard() {
//		 // 수정할 객체 생성
//		 BoardVo boardVo = new BoardVo();
//		 boardVo.setBno(1);	// 실제로 DB에 있는 bno
//		 boardVo.setTitle("수정한 제목 마이바티스2");
//		 boardVo.setContent("수정한 내용");
//		 
//		 // 객체 수정
//		 int result = boardMapper.updateBoard(boardVo);
//		 assertTrue(result > 0);
//		 log.info("수정된 행수 : " + result);
//	 }
	 

}
