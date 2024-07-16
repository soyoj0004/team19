package com.javalab.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.javalab.board.service.MemberService;
import com.javalab.board.vo.ProductVo;
import com.javalab.board.vo.MemberVo;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/member")
@Slf4j
public class MemberController {

	@Autowired
	private MemberService memberService;

	@GetMapping("/create")
	public String createMember(Model model) {
		model.addAttribute("memberVo", new MemberVo());
		return "member/memberCreate";
	}

	@PostMapping("/create")
	public String createMember(@ModelAttribute MemberVo memberVo) {
//		log.info("createMember  메소드 : " + memberVo);
		memberService.createMember(memberVo);
		return "login/login";
	}

}
