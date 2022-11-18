package kr.co.mpnp.user.dao;

import kr.co.mpnp.user.vo.MemberVO;

public class QuitMemberDAO {
	private static QuitMemberDAO qmDAO;
	
	private QuitMemberDAO( ) {
			
	}

	public static QuitMemberDAO getInstance(){
			if(qmDAO==null) {
				qmDAO= new QuitMemberDAO();
			}
			return qmDAO;
	}
	
	public boolean insertQuitMember(MemberVO mVO) {
		boolean flag=false;
		
		return flag;
	}

}
