package kr.co.mpnp.user.service;

import org.json.simple.JSONObject;


import kr.co.mpnp.user.dao.MemberDAO;
import kr.co.mpnp.user.vo.MemberVO;


public class  JoinService {
	
	//사용자-중복확인
	public String searchDupChk(String id) {
		
		MemberDAO mDAO=MemberDAO.getInstance();
		boolean dupChkFlag=mDAO.selectDupChk(id);
		
		JSONObject jsonFlag=new JSONObject();
		jsonFlag.put("dupChkFlag", dupChkFlag);
		
		return jsonFlag.toJSONString();
	}
	
	
	//사용자-회원가입
	public int addMember(MemberVO mVO) {
		int cnt=0;
		
		MemberDAO mDAO=MemberDAO.getInstance();
		cnt=mDAO.insertMember(mVO);
		
		return cnt;
	}
	
	
}
