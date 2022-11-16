package kr.co.mpnp.admin.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.admin.vo.AdminProductVO;
import kr.co.mpnp.admin.vo.AdminProductVO2;
import kr.co.mpnp.handler.MyBatisHandler;
import kr.co.mpnp.admin.domain.AdminCategoryDomain;
import kr.co.mpnp.admin.domain.AdminProductDomain;

public class AdminProductDAO {
	
public List<AdminProductDomain> selectPrd (){
	List<AdminProductDomain> list =null;
	
	//1.MyBatis Handler¾ò±â
	MyBatisHandler mbh=MyBatisHandler.getInstance();
	SqlSession ss= mbh.getHandler();
	//2.Äõ¸®¹®¼öÇà
	try {
	list=ss.selectList("kr.co.mpnp.admin.mapper.AdminProductMapper.selectPrd");
	}catch(PersistenceException pe) {
		pe.printStackTrace();
	}
	//3.MyBatis Handler´Ý±â
	mbh.closeHandler(ss);
	
	
	return list;
	
	
}
	
	public static void main(String[] args) {
		
		AdminProductDAO adDAO = new AdminProductDAO();
		
		adDAO.selectPrd();
		
	
	}

}
