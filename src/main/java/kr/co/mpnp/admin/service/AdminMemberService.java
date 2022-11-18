package kr.co.mpnp.admin.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.admin.domain.AdminMemberDomain;
import kr.co.mpnp.admin.vo.AdminMemberVO;


public class AdminMemberService {
	
	//관리자-회원조회
	public List<AdminMemberDomain> searchMember(AdminMemberVO amVO){
		List<AdminMemberDomain> list= new ArrayList<AdminMemberDomain>();
		return  list;
	}

	//관리자-회원상세정보
	public AdminMemberDomain searchMemberDetail(String id){
		AdminMemberDomain amDomain=null;
		return amDomain;
	}
	
	//관리자-회원삭제
	public int modifyMember(String id) {
		int cnt=0;
		
		return cnt;
	}
	
	
	//관리자-등급변경
	//매개변수로 VO들어오는거 이해못했어
	public int modifyMemberGrade(AdminMemberVO amVO) {
		int cnt=0;
		return cnt;
		
	}

}
