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
		
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		System.out.println(mVO.getId()+"/"+mVO.getPass()); //값 잘 받아짐
				
		//2.쿼리문실행
		int cnt=ss.selectOne("kr.co.mpnp.user.mapper.memberMapper.selectLogin",mVO);
		if(cnt!=0) {
			flag=true;
		}else {
			System.out.println("로그인에 실패하였습니다");
		}
		//cnt 테스트
		System.out.println(cnt+"건");
				
		//3.MyBatis Handler 끊기
		mbh.closeHandler(ss);
		
		return flag;
	}
	
	
	//사용자-아이디찾기
	//반환값 boolean으로 바꾸고 아이디찾기 실패 처리하기...? 
	//성공시 domain값 필요하니까 반환값 도메인으로 가는건가?  그럼 실패는 어디서 처리해
	//그냥 null값일때를 처리하면 되나? 
	public MemberDomain selectMemberId(MemberVO mVO) {
		MemberDomain md=null;
		
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		System.out.println(mVO.getId()+"/"+mVO.getPass()); 
				
		//2.쿼리문실행
		md=ss.selectOne("kr.co.mpnp.user.mapper.memberMapper.selectMemberId",mVO);
		//3.MyBatis Handler 끊기
		mbh.closeHandler(ss);
		
		return md;
	}
	
	
	//사용자-비밀번호찾기
	//boolean -> Domain으로 바꿈 session에 id 올려줘야해서
	public MemberDomain selectMemberPass(MemberVO mVO) {
		MemberDomain md=null;
		
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		System.out.println(mVO.getId()+"/"+mVO.getPass()); 
				
		//2.쿼리문실행
		md=ss.selectOne("kr.co.mpnp.user.mapper.memberMapper.selectMemberPass",mVO);
				
		//3.MyBatis Handler 끊기
		mbh.closeHandler(ss);
		
		return md;
	}
	
	
	//사용자-비번변경
	public int updateMemberPass(MemberVO mVO) {
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//2.쿼리문실행
		int cnt=ss.update("kr.co.mpnp.user.mapper.memberMapper.updateMemberPass",mVO);
		if(cnt!=0) {
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
	
	
	//사용자-회원가입
		public int insertMember(MemberVO mVO) {
			//1.MyBatis Handler얻기
			MyBatisHandler mbh=MyBatisHandler.getInstance();
			SqlSession ss=mbh.getHandler();
			System.out.println("DAO 아이디"+mVO.getId()); //잘들어옴
			
			//2.쿼리문실행
			int cnt=ss.insert("kr.co.mpnp.user.mapper.memberMapper.insertMember",mVO);
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
		
		
		//사용자-중복확인
		public boolean selectDupChk(String id) {
			boolean flag=false;
			
			return flag;
		}
		


}
