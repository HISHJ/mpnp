package kr.co.mpnp.admin.dao;

import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.admin.domain.AdminMemberDomain;
import kr.co.mpnp.handler.MyBatisHandler;

public class  AdminQuitMemberDAO {
	private static AdminQuitMemberDAO aqmDAO;
	
	private AdminQuitMemberDAO() {
			
	}

	public static AdminQuitMemberDAO getInstance(){
			if(aqmDAO==null) {
				aqmDAO= new AdminQuitMemberDAO();
			}
			return aqmDAO;
	}
	
	
	public int insertQuitMember(String id) {
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		System.out.println("탈퇴하려는 회원 "+id);
		
		//2.쿼리문실행
		int cnt=ss.insert("kr.co.mpnp.adminMemberMapper.insertQuitMember",id);
		if(cnt!=0) {
			System.out.println("아이디: "+id+" 탈퇴회원으로 들어왔다");
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
	
	
	public AdminMemberDomain selectQuitMember(String id) {
		//1.MyBatis Handler얻기
		AdminMemberDomain amd=null;
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//2.쿼리문실행
		amd=ss.selectOne("kr.co.mpnp.adminMemberMapper.selectQuitMember",id);

		//3.MyBatis Handler 끊기
		mbh.closeHandler(ss);
		
		return amd;
	}

}//
