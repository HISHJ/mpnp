package kr.co.mpnp.admin.dao;

import org.apache.ibatis.session.SqlSession;

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
		System.out.println("핸들러의 행방 "+mbh);
		SqlSession ss=mbh.getHandler();
		System.out.println("sql 세션의 행방 "+ss);
		
		//2.쿼리문실행
		int cnt=ss.insert("kr.co.nyangpoom.admin.dao.mapper.adminMemberMapper.insertQuitMember",id);
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

	public static void main(String[] args) {
		AdminQuitMemberDAO qmDAO=new AdminQuitMemberDAO();
		qmDAO.insertQuitMember("");
		

	}

}
