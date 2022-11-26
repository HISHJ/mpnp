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
		//List<AdminMemberDomain> list= new ArrayList<AdminMemberDomain>();
		List<AdminMemberDomain> list= null;
		
	    // MyBatisHandler얻기
			MyBatisHandler mbh = MyBatisHandler.getInstance();
			SqlSession ss = mbh.getHandler();
			// 쿼리 실행
			list = ss.selectList("kr.co.mpnp.adminMemberMapper.selectMember",amVO);

			System.out.println(list);

			// 연결끊기
			mbh.closeHandler(ss);
		
		return list;
	}
	
	//관리자-회원조회-등급조회
	public List<AdminMemberDomain> selectGrade(AdminMemberVO amVO){
		//List<AdminMemberDomain> list= new ArrayList<AdminMemberDomain>();
		List<AdminMemberDomain> list= null;
		
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		// 쿼리 실행
		list = ss.selectList("kr.co.mpnp.adminMemberMapper.selectGrade",amVO);
		
		System.out.println(list);
		
		// 연결끊기
		mbh.closeHandler(ss);
		
		return list;
	}

	//관리자-회원상세정보
	public AdminMemberDomain selectMemberDetail(String id){
		AdminMemberDomain amd=null;
		
		// MyBatisHandler얻기
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		SqlSession ss = mbh.getHandler();
		// 쿼리 실행
		amd = ss.selectOne("kr.co.mpnp.adminMemberMapper.selectMemberDetail",id);

		System.out.println(amd);

		// 연결끊기
		mbh.closeHandler(ss);
	
		
		return amd;
	}
	
	//관리자-회원삭제
	public int updateMember(String id) {
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//2.쿼리문실행
		int cnt=ss.update("kr.co.mpnp.adminMemberMapper.updateMember",id);
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
		
		//session에서 받아온 id가 null 이다 ? 어떻게 해결해야하지? jsp form안에 hidden으로 값 줌
		System.out.println("DAO값 "+amVO.getId()+"/"+amVO.getGradeid());
		
		//2.쿼리문실행
		int cnt=ss.update("kr.co.mpnp.adminMemberMapper.updateMemberGrade",amVO);
		if(cnt!=0) {
			System.out.println(amVO.getGradeid()+"으로 회원등급변경");
			ss.commit();
		}else {
			System.out.println("등급변경에 실패하였습니다");
		}
		//cnt 테스트
		System.out.println(cnt+"건");
		
		//3.MyBatis Handler 끊기
		mbh.closeHandler(ss);
		
		return cnt;
	}

}
