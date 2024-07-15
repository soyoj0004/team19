package com.javalab.board.service;

import com.javalab.board.vo.MemberVo;

/**
 * Member 서비스 인터페이스
 * - 비즈니스 로직이 구현되는 레이어
 *
 */
public interface MemberService {
    int createMember(MemberVo member);
    void updateMemberPoint(String point);
    MemberVo getMember(String memberId);
}
