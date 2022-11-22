package kr.co.mpnp.user.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.user.domain.WishDomain;
import kr.co.mpnp.user.vo.WishListVO;

public class WishListDAO {
	
	private static WishListDAO wDAO;
	private WishListDAO() {
		
	}
	
	public static WishListDAO getInstance() {
		if(wDAO==null) {
			wDAO= new WishListDAO();
			
		}
		return wDAO;
	}
	
//Âò ¸ñ·Ï
public List<WishDomain> selectWish(String id){
	List<WishDomain> list =null;
	
	//1.MyBatisHandler¾ò±â
	MyBatisHandler mbh = MyBatisHandler.getInstance();
	SqlSession ss= mbh.getHandler();
	try {
	//2.Äõ¸®¹® ½ÇÇà
	list=ss.selectList("kr.co.mpnp.user.mapper.WishListMapper.selectWish", id);
	
	}catch(PersistenceException pe) {
		pe.printStackTrace();
	}
	//3.¿¬°á²÷±â
	mbh.closeHandler(ss);
	
	
	return list;
}//selectWish

//Âò »èÁ¦
public int deleteWishList(WishListVO wVO) {
	int cnt=0;
	
	//1.MyBatisHandler¾ò±â
	MyBatisHandler mbh = MyBatisHandler.getInstance();
	SqlSession ss= mbh.getHandler();
	//2.Äõ¸®¹® ½ÇÇà
	cnt=ss.delete("kr.co.mpnp.user.mapper.WishListMapper.deleteWish",wVO);
	ss.commit();
	//3.¿¬°á²÷±â
	mbh.closeHandler(ss);
	
	
	return cnt;
	
	
	
}


public static void main(String[] args) {
	
	WishListDAO wDAO = new WishListDAO();
	WishListVO wVO = new WishListVO("id002", "p0002");
	System.out.println(wDAO.selectWish("id002"));
	System.out.println(wDAO.deleteWishList(wVO));
}//main

	
	

}//class
