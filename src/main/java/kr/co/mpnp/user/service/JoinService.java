package kr.co.mpnp.user.service;

import kr.co.mpnp.user.dao.MemberDAO;
import kr.co.mpnp.user.vo.MemberVO;


public class  JoinService {
	
	//1.사용자-중복확인
	public boolean searchDupChk(String id) {
		boolean flag=false;
		
		return flag;
	}
	
	
	//2.사용자-회원가입
	public int addMember(MemberVO mVO) {
		int cnt=0;
		
		MemberDAO mDAO=MemberDAO.getInstance();
		cnt=mDAO.insertMember(mVO);
		
		return cnt;
	}
	
	
}
