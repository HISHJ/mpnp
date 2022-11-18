package kr.co.mpnp.user.dao;

import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.MemberDomain;
import kr.co.mpnp.user.vo.MemberVO;


public class MemberDAO {
	private static MemberDAO mDAO;
	
	private MemberDAO() {
			
	}

	public static MemberDAO getInstance(){
			if(mDAO==null) {
				mDAO= new MemberDAO();
			}
			return mDAO;
	}
	
	
	//1. 사용자-로그인
	public boolean selectLogin(MemberVO mVO) {
		boolean flag=false;
		
		return flag;
		
	}
	
	//1.사용자-중복확인
	public boolean selectDupChk(String id) {
		boolean flag=false;
		
		return flag;
	}
	
	
	//2.사용자-회원가입
	public int insertMember(MemberVO mVO) {
		//1.MyBatis Handler얻기
				MyBatisHandler mbh=MyBatisHandler.getInstance();
				SqlSession ss=mbh.getHandler();
				
				//2.쿼리문실행
				int cnt=ss.insert("kr.co.mpnp.user.dao.mapper.memberMapper.insertMember",mVO);
				if(cnt!=0) {
					System.out.println("");
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
	
	
	//3.사용자-아이디찾기
	public MemberDomain selectMemberId(MemberVO mVO) {
		MemberDomain mD=null;
		
		return mD;
	}
	
	
	//4.사용자-비밀번호찾기
	public boolean selectMemberPass(MemberVO mVO) {
		boolean flag=false;
		
		return flag;
	}
	
	
	//5.사용자-비번변경
	public int updateMemberPass(MemberVO mVO) {
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//2.쿼리문실행
		int cnt=ss.update("kr.co.mpnp.user.dao.mapper.memberMapper.updateMemberPass",mVO);
		if(cnt!=0) {
			System.out.println("");
			ss.commit();//와 이거 잊지말자 .... 
		}else {
			System.out.println("실패하였습니다");
		}
		//cnt 테스트
		System.out.println(cnt+"건");
		
		//3.MyBatis Handler 끊기
		mbh.closeHandler(ss);
		
		return  cnt;
	}
	
	
	//6.사용자-회원정보조회
	public MemberDomain selectMemberInfo(MemberVO mVO) {
		MemberDomain mD=null;
		
		return mD;
	}
	
	
	//7.사용자-회원정보수정
	public int updateMemberInfo(MemberVO mVO) {
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//2.쿼리문실행
		int cnt=ss.update("kr.co.mpnp.user.dao.mapper.memberMapper.updateMemberInfo",mVO);
		if(cnt!=0) {
			System.out.println("");
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
	
	
	//8.사용자-회원탈퇴1
	public boolean selectMember(MemberVO mVO) {
		boolean flag=false;
		
		return flag;
	}
	
	
	//9.사용자-회원탈퇴2
	public int updateMemberStatus(MemberVO mVO) {
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//2.쿼리문실행
		int cnt=ss.update("kr.co.mpnp.user.dao.mapper.memberMapper.updateMemberStatus",mVO);
		if(cnt!=0) {
			System.out.println("");
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

	}

}
