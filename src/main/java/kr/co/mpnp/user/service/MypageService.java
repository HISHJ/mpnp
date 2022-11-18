package kr.co.mpnp.user.service;

import kr.co.mpnp.user.domain.MypageDomain;
import kr.co.mpnp.user.vo.MemberVO;


public class  MypageService {
	
	//1.사용자-마이페이지 첫화면 이름,등급 조회
	public MypageDomain searchMypageMember(MemberVO mVO) {
		MypageDomain md=null;
		
		return md;
		
	}
	
	//1.사용자-마이페이지 비번확인
	public boolean searchPass(MemberVO mVO) {
		boolean flag=false;
		
		return flag;
		
	}

	
	//2.사용자-마이페이지 비번변경
	public int modifyPass(MemberVO mVO) {
		int cnt=0;
		
		return cnt;
	}
	
	
	

	public static void main(String[] args) {

	}

}
