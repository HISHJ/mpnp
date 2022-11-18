package kr.co.mpnp.user.service;

import java.util.ArrayList;

import java.util.List;

import kr.co.mpnp.user.dao.MainDAO;
import kr.co.mpnp.user.domain.MainDomain;

public class MainService {

		
	

	
	 public List<MainDomain> searchPrdList(String mainid){
		
		 MainDAO mainDAO = new MainDAO();
		 List<MainDomain> list =mainDAO.selectPrdList(mainid);
	 
	 return list;
	 
	 }
	 

}// class
