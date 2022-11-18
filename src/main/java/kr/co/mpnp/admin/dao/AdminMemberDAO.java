package kr.co.mpnp.admin.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.admin.domain.AdminMemberDomain;
import kr.co.mpnp.admin.vo.AdminMemberVO;
import kr.co.mpnp.handler.MyBatisHandler;


public class  AdminMemberDAO {
	private static AdminMemberDAO amDAO;
	
	private AdminMemberDAO() {
			
	}

	public static AdminMemberDAO getInstance(){
			if(amDAO==null) {
				amDAO= new AdminMemberDAO();
			}
			return amDAO;
	}
	
	//관리자-회원조회
	public List<AdminMemberDomain> selectMember(AdminMemberVO amVO){
		List<AdminMemberDomain> list= new ArrayList<AdminMemberDomain>();
		return list;
	}

	//관리자-회원상세정보
	public AdminMemberDomain selectMemberDetail(String id){
		AdminMemberDomain amDomain=null;
		return amDomain;
	}
	
	//관리자-회원삭제
	public int updateMember(String id) {
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		System.out.println("핸들러의 행방 "+mbh);
		SqlSession ss=mbh.getHandler();
		System.out.println("sql 세션의 행방 "+ss);
		
		//2.쿼리문실행
		int cnt=ss.update("kr.co.nyangpoom.admin.dao.mapper.adminMemberMapper.updateMember",id);
		if(cnt!=0) {
			System.out.println("아이디: "+id+" 탈퇴처리되었습니다");
			ss.commit();//와 이거 잊지말자 .... 
		}else {
			System.out.println("실패하였습니다");
		}
		//cnt 테스트
		System.out.println(cnt+"건");
		
		//3.MyBatis Handler 끊기
		mbh.closeHandler(ss);
		
		return cnt;
	}
	
	
	//관리자-회원등급변경
	//매개변수로 VO들어오는거 이해못했어
	public int updateMemberGrade(AdminMemberVO amVO) {
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//2.쿼리문실행
		int cnt=ss.update("kr.co.nyangpoom.admin.dao.mapper.adminMemberMapper.updateMemberGrade",amVO);
		if(cnt!=0) {
			System.out.println(amVO.getGradeid()+"으로 회원등급변경");
			ss.commit();
		}else {
			System.out.println("회원 삭제에 실패하였습니다");
		}
		//cnt 테스트
		System.out.println(cnt+"건");
		
		//3.MyBatis Handler 끊기
		mbh.closeHandler(ss);
		
		return cnt;
		
	}

	public static void main(String[] args) {
		AdminMemberDAO amDAO=new AdminMemberDAO();
		//amDAO.updateMember("id007");
		AdminMemberVO amVO=new AdminMemberVO("id001","1","G4","1","1");
		amDAO.updateMemberGrade(amVO);

	}

}
