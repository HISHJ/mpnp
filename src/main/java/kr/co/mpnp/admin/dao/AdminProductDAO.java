package kr.co.mpnp.admin.dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.admin.domain.AdminCategoryDomain;
import kr.co.mpnp.admin.domain.AdminProductDomain;
import kr.co.mpnp.admin.vo.AdminPrdImgVO;
import kr.co.mpnp.admin.vo.AdminProductVO;
import kr.co.mpnp.handler.MyBatisHandler;

public class AdminProductDAO {
	
	private static AdminProductDAO apDAO;
	private AdminProductDAO() {
		
	}
	public static AdminProductDAO getInstance() {
		
	if(apDAO==null) {
		apDAO = new AdminProductDAO();
	}
	return apDAO;
	}
	
	//카테고리
public List<AdminCategoryDomain> selectCategory(String mainid){
	List<AdminCategoryDomain> list =null;
	
	//1.MyBatis Handler얻기
	MyBatisHandler mbh=MyBatisHandler.getInstance();
	SqlSession ss= mbh.getHandler();
	//2.쿼리문수행
	try {
	list=ss.selectList("kr.co.mpnp.admin.mapper.AdminProductMapper.selectCategory",mainid);
	}catch(PersistenceException pe) {
		pe.printStackTrace();
	}
	//3.MyBatis Handler닫기
	mbh.closeHandler(ss);
	
	
	return list;
	
}
	//상품 리스트
public List<AdminProductDomain> selectPrd (AdminProductVO apVO){
	List<AdminProductDomain> list =null;
	
	//1.MyBatis Handler얻기
	MyBatisHandler mbh=MyBatisHandler.getInstance();
	SqlSession ss= mbh.getHandler();
	//2.쿼리문수행
	try {
		
		
		
	list=ss.selectList("kr.co.mpnp.admin.mapper.AdminProductMapper.selectPrd",apVO);
	}catch(PersistenceException pe) {
		pe.printStackTrace();
	}
	//3.MyBatis Handler닫기
	mbh.closeHandler(ss);
	
	
	return list;
	
	
}
	//상품 상세보기
public AdminProductDomain selectPrdDetail(String productid) {
	AdminProductDomain ap =null;
	//1.MyBatis Handler얻기
	MyBatisHandler mbh=MyBatisHandler.getInstance();
	SqlSession ss= mbh.getHandler();
	//2.쿼리문수행
	try {
	ap=ss.selectOne("kr.co.mpnp.admin.mapper.AdminProductMapper.selectPrdDetail",productid);
	}catch(PersistenceException pe) {
		pe.printStackTrace();
	}
	//3.MyBatis Handler닫기
	mbh.closeHandler(ss);
	
	
	return ap;
	
	
}
//상품 이미지
public List<AdminProductDomain> selectPrdImg(String productid) {
	List<AdminProductDomain> list =null;
	//1.MyBatis Handler얻기
	MyBatisHandler mbh=MyBatisHandler.getInstance();
	SqlSession ss= mbh.getHandler();
	//2.쿼리문수행
	try {
		list=ss.selectList("kr.co.mpnp.admin.mapper.AdminProductMapper.selectPrdImg",productid);
	}catch(PersistenceException pe) {
		pe.printStackTrace();
	}
	//3.MyBatis Handler닫기
	mbh.closeHandler(ss);
	
	
	return list;
	
	
}

//상품코드 조회
public String selectProductId() {
String prID="";
// 핸들러 얻기
// MyBatisHandler얻기
MyBatisHandler mbh = MyBatisHandler.getInstance();
SqlSession ss = mbh.getHandler();
try {
	// 쿼리 실행
	prID = ss.selectOne("kr.co.mpnp.admin.mapper.AdminProductMapper.selectPrdId");
	// System.out.println(orID);
} catch (PersistenceException pe) {
	pe.printStackTrace();
}
// 연결끊기
mbh.closeHandler(ss);

return prID;
	
	
}


//상품추가
public int insertProduct(AdminProductVO apVO) {
	int cnt=0;

	//1.MyBatis Handler얻기
		MyBatisHandler mbh=MyBatisHandler.getInstance();
		SqlSession ss= mbh.getHandler();
		//2.쿼리문수행
		try {
			cnt=ss.insert("kr.co.mpnp.admin.mapper.AdminProductMapper.insertPrd",apVO);
			if(cnt!=0) {		
					System.out.println("성공 : "+cnt);
			}else {
				System.out.println("상품테이블 추가 실패 ");
			}//end else
			
			System.out.println("----------insertProduct----------"+ apVO);
			
			if(!apVO.getPrdimg().isEmpty()) {
			int img=0;
			AdminPrdImgVO apiVO=null;
			for(int i=0 ; i  < apVO.getPrdimg().size() ;i++) {
				apiVO=new AdminPrdImgVO( apVO.getProductid() , apVO.getPrdimg().get(i));
				
			img+=ss.insert("kr.co.mpnp.admin.mapper.AdminProductMapper.insertPrdImg",apiVO);
			}
			  if(img!=0) {
			 System.out.println("최종성공 :"+img);
	
			  }else {
				  System.out.println("이미지 넣기 실패"+img);
			  }
			}//end if
			
			  ss.commit();
			}catch(PersistenceException pe) {
					pe.printStackTrace();
				
				}
		//3.MyBatis Handler닫기
		mbh.closeHandler(ss);
	
	
	return cnt;
}
//상품수정
public int updateProduct(AdminProductVO apVO) {
	int cnt=0;
	
	//1.MyBatis Handler얻기
	MyBatisHandler mbh=MyBatisHandler.getInstance();
	SqlSession ss= mbh.getHandler();
	//2.쿼리문수행
	try {
		cnt=ss.update("kr.co.mpnp.admin.mapper.AdminProductMapper.updatePrd",apVO);
		if(cnt!=0) {		
			System.out.println("성공 : "+cnt);
		}else {
			System.out.println("상품테이블 추가 실패 ");
		}//end else
		
		System.out.println("----------updateProduct----------"+ apVO);
		
		if(!apVO.getPrdimg().isEmpty()) {
			int delete=0;
			int img=0;
			delete=ss.delete("kr.co.mpnp.admin.mapper.AdminProductMapper.deletePrd",apVO);
			if(delete!=0) {
				System.out.println("데이터 삭제성공 " +delete);
			}else {
				System.out.println("데이터 삭제 실패 : "+delete);
			}
			AdminPrdImgVO apiVO=null;
			for(int i=0 ; i  < apVO.getPrdimg().size() ;i++) {
				apiVO=new AdminPrdImgVO( apVO.getProductid() , apVO.getPrdimg().get(i));
				img+=ss.insert("kr.co.mpnp.admin.mapper.AdminProductMapper.insertPrdImg",apiVO);
				
			}
			if(img!=0) {
				System.out.println("최종성공 :"+img);
				ss.commit();
				
			}else {
				System.out.println("이미지 넣기 실패"+img);
			}
		}//end if
		
	
	}catch(PersistenceException pe) {
		pe.printStackTrace();
		
	}
	//3.MyBatis Handler닫기
	mbh.closeHandler(ss);
	
	
	return cnt;
}

	public static void main(String[] args) {
		
		AdminProductDAO apDAO = new AdminProductDAO();
		AdminProductVO apVO = new AdminProductVO();
		//apVO.setname("도");
		apVO.setmain_id("m0001");
		//apVO.setsub_id("s000");
	//System.out.println(apDAO.selectPrd(apVO));
//System.out.println(apDAO.selectPrdDetail("pr_0000073"));
		List<String> list = new ArrayList<String>(Arrays.asList("A"));
//	System.out.println(apDAO.selectPrdImg("pr_0000073"));

		//System.out.println(apDAO.selectCategory("m0001"));
	//System.out.println(apVO);
//	System.out.println(apDAO.insertProduct(apVO));
//System.out.println(apDAO.selectProductId());
	
	apVO.setProductid("pr_0000073");
	System.out.println(apDAO.updateProduct(apVO));
	
	}

}
