package kr.co.mpnp.user.dao;

import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.MemberDomain;
import kr.co.mpnp.user.domain.MypageDomain;
import kr.co.mpnp.user.vo.MemberVO;
import kr.co.mpnp.user.vo.MypageVO;


public class MypageDAO {
	private static MypageDAO  mDAO;
	
	private MypageDAO() {
			
	}

	public static MypageDAO getInstance(){
			if(mDAO==null) {
				mDAO= new MypageDAO();
			}
			return mDAO;
	}
	
	//마이페이지 첫화면 이름,등급 조회
	public MypageDomain selectMypageMember(MemberVO mVO) {
		MypageDomain md=null;
		
		return md;
		
	}
	
	//마이페이지 비번확인
	public boolean selectPass(MypageVO mVO) {
		boolean flag=false;
		
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		System.out.println("비번확인 id "+mVO.getId()); //어라 값이 안넘오온다? jsp에서 form 안줬음
		System.out.println("비번확인 pass "+mVO.getPass()); //들어옴
				
		//2.쿼리문실행
		int cnt=ss.selectOne("kr.co.mpnp.user.mapper.mypageMapper.selectPass",mVO);
		if(cnt!=0) {
			flag=true;
		}else {
			System.out.println("실패하였습니다");
		}
		//cnt 테스트
		System.out.println(cnt+"건");
				
		//3.MyBatis Handler 끊기
		mbh.closeHandler(ss);
		
		return flag;
		
	}

	
	//마이페이지 비번변경
	public int updatePass(MypageVO mVO) {
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//2.쿼리문실행
		int cnt=ss.update("kr.co.mpnp.user.mapper.mypageMapper.updatePass",mVO);
		if(cnt!=0) {
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
	
	
	//사용자-회원정보조회
	public MypageDomain selectMemberInfo(String id) {
		MypageDomain md=null;
		
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
//		System.out.println("횐정보조회 id "+mVO.getId()); //잘 들어온다
//		System.out.println("횐정보조회 pass "+mVO.getPass());
//		System.out.println("횐정보조회 name "+mVO.getName()); //얘 말고 
				
		//2.쿼리문실행
		md=ss.selectOne("kr.co.mpnp.user.mapper.mypageMapper.selectMemberInfo",id);
				
		//3.MyBatis Handler 끊기
		mbh.closeHandler(ss);
		
		
		return md;
	}


	
	
	//사용자-회원정보수정
	public int updateMemberInfo(MypageVO mVO) {
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		System.out.println("회원정보수정 id "+mVO.getId()); 
		System.out.println("회원정보수정 pass "+mVO.getPass());
		
		//2.쿼리문실행
		int cnt=ss.update("kr.co.mpnp.user.mapper.mypageMapper.updateMemberInfo",mVO);
		if(cnt!=0) {
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
	
	
	//사용자-회원탈퇴1
	public boolean selectMember(MypageVO mVO) {
		boolean flag=false;
		
		return flag;
	}
	
	
	//사용자-회원탈퇴2
	public int updateMemberStatus(MypageVO mVO) {
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//2.쿼리문실행
		int cnt=ss.update("",mVO);
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
	

}
