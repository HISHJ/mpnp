package kr.co.mpnp.user.dao;

import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.MypageDomain;
import kr.co.mpnp.user.vo.MemberVO;


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
	
	//1.사용자-마이페이지 첫화면 이름,등급 조회
	public MypageDomain selectMypageMember(MemberVO mVO) {
		MypageDomain md=null;
		
		return md;
		
	}
	
	//1.사용자-마이페이지 비번확인
	public boolean selectPass(MemberVO mVO) {
		boolean flag=false;
		
		return flag;
		
	}

	
	//2.사용자-마이페이지 비번변경
	public int updatePass(MemberVO mVO) {
		//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss=mbh.getHandler();
		
		//2.쿼리문실행
		int cnt=ss.update("kr.co.mpnp.user.dao.mapper.mypageMapper.updatePass",mVO);
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
