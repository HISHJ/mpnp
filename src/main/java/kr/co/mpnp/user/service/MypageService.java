package kr.co.mpnp.user.service;

import kr.co.mpnp.user.dao.MypageDAO;
import kr.co.mpnp.user.domain.MemberDomain;
import kr.co.mpnp.user.domain.MypageDomain;
import kr.co.mpnp.user.vo.MemberVO;
import kr.co.mpnp.user.vo.MypageVO;


public class  MypageService {
	
	//마이페이지 첫화면 이름,등급 조회
	public MypageDomain searchMypageMember(MypageVO mVO) {
		MypageDomain md=null;
		
		return md;
		
	}
	
	//마이페이지 비번확인
	public boolean searchPass(MypageVO mVO) {
		boolean flag=false;
		
		MypageDAO mDAO=MypageDAO.getInstance();
		flag=mDAO.selectPass(mVO);
		
		return flag;
		
	}

	
	//마이페이지 비번변경
	public int modifyPass(MypageVO mVO) {
		int cnt=0;
		
		return cnt;
	}
	
	//사용자-회원정보조회
		public MypageDomain searchMemberInfo(String id) {
			MypageDomain md=null;
			
			MypageDAO mDAO=MypageDAO.getInstance();
			md=mDAO.selectMemberInfo(id);
			
			return md;
		}
		
		
		//사용자-회원정보수정
		public int modifyMemberInfo(MypageVO mVO) {
			int cnt=0;
			
			MypageDAO mDAO=MypageDAO.getInstance();
			mDAO.updateMemberInfo(mVO);
			
			return cnt;
			
		}
		
		
		//사용자-회원탈퇴1
		public boolean searchMember(MypageVO mVO) {
			boolean flag=false;
			
			return flag;
		}
		
		
		//사용자-회원탈퇴2
		public int modifyMemberStatus(MypageVO mVO) {
			int cnt=0;
			
			return cnt;
		}
		

	


}
