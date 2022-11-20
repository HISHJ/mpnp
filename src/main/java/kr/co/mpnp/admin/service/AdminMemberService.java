package kr.co.mpnp.admin.service;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.admin.dao.AdminMemberDAO;
import kr.co.mpnp.admin.domain.AdminMemberDomain;
import kr.co.mpnp.admin.vo.AdminMemberVO;


public class AdminMemberService {
	
	//관리자-회원조회
	public List<AdminMemberDomain> searchMember(AdminMemberVO amVO){
		AdminMemberDAO amd=AdminMemberDAO.getInstance();
		List<AdminMemberDomain> list= amd.selectMember(amVO);
		return  list;
	}

	//관리자-회원상세정보
	public AdminMemberDomain searchMemberDetail(String id){
		
		AdminMemberDAO amDAO=AdminMemberDAO.getInstance();
		AdminMemberDomain amDomain=amDAO.selectMemberDetail(id);
		
		return amDomain;
	}
	
	//관리자-회원삭제
	public int modifyMember(String id) {
		int cnt=0;
		AdminMemberDAO amDAO=AdminMemberDAO.getInstance();
		cnt=amDAO.updateMember(id);
		
		return cnt;
	}
	
	
	//관리자-등급변경
	//매개변수로 VO들어오는거 이해못했어
	public int modifyMemberGrade(AdminMemberVO amVO) {
		int cnt=0;
		
		AdminMemberDAO amDAO=AdminMemberDAO.getInstance();
		cnt=amDAO.updateMemberGrade(amVO);
		
		return cnt;
	}

}
