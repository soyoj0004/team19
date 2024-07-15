package com.javalab.board.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;


/**
 * MemberVO 자바빈즈 클래스 - JSP, Servlet 간의 데이터 이동시 사용 - private 멤버변수, 게터/세터, 기본생성자
 */
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
public class ProductVo {
	private int proId;
	private int categoryKey_ID;
	private String name;
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	private String content;
	private int price;
	
}