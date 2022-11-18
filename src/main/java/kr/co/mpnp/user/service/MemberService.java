package kr.co.mpnp.user.service;

import org.apache.ibatis.session.SqlSession;


import kr.co.mpnp.user.domain.MemberDomain;
import kr.co.mpnp.user.vo.MemberVO;


public class  MemberService {
	
	//1. 사용자-로그인
	public boolean searchLogin(MemberVO mVO) {
		boolean flag=false;
		
		return flag;
		
	}
	
	//3.사용자-아이디찾기
	public MemberDomain searchMemberId(MemberVO mVO) {
		MemberDomain mD=null;
		
		return mD;
	}
	
	
	//4.사용자-비밀번호찾기
	public boolean searchMemberPass(MemberVO mVO) {
		boolean flag=false;
		
		return flag;
	}
	
	
	//5.사용자-비번변경
	public int modifyMemberPass(MemberVO mVO) {
		int cnt=0;
		
		return cnt;
	}
	
	
	//6.사용자-회원정보조회
	public MemberDomain searchMemberInfo(MemberVO mVO) {
		MemberDomain mD=null;
		
		return mD;
	}
	
	
	//7.사용자-회원정보수정
	public int modifyMemberInfo(MemberVO mVO) {
		int cnt=0;
		return cnt;
		
	}
	
	
	//8.사용자-회원탈퇴1
	public boolean searchMember(MemberVO mVO) {
		boolean flag=false;
		
		return flag;
	}
	
	
	//9.사용자-회원탈퇴2
	public int modifyMemberStatus(MemberVO mVO) {
		int cnt=0;
		
		return cnt;
	}
	
	

	public static void main(String[] args) {

	}

}
