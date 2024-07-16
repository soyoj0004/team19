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
	
	// 상품 생성
	public ProductVo(int categoryKey_ID, String name, String img1, String img2, String img3, String img4,
			String img5, String content, int price) {
		this.categoryKey_ID = categoryKey_ID;
		this.name = name;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.img4 = img4;
		this.img5 = img5;
		this.content = content;
		this.price = price;
	}

	// 상품 조회
	public ProductVo(int proId, int categoryKey_ID, String name, String img1, String content, int price) {
		this.proId = proId;
		this.categoryKey_ID = categoryKey_ID;
		this.name = name;
		this.img1 = img1;
		this.content = content;
		this.price = price;
	}
	
	
}