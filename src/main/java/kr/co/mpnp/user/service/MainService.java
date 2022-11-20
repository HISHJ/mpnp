package kr.co.mpnp.user.service;

import java.util.ArrayList;

import java.util.List;

import kr.co.mpnp.user.dao.MainDAO;
import kr.co.mpnp.user.domain.MainDomain;

public class MainService {

	MainDAO mainDAO = MainDAO.getInstance();
	
	
	 public List<MainDomain> searchPrdList(String mainid){
		
		 List<MainDomain> list =mainDAO.selectPrdList(mainid);
	 
	 return list;
	 
	 }
	 
		public int searchPrdCnt (String mainid) {
			int cnt=mainDAO.selectprdCnt(mainid);
			
			
			return cnt;
			
		}
	


}// class
