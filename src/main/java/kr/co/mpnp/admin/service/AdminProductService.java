package kr.co.mpnp.admin.service;


import java.sql.SQLException;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import kr.co.mpnp.admin.dao.AdminProductDAO;
import kr.co.mpnp.admin.domain.AdminCategoryDomain;
import kr.co.mpnp.admin.domain.AdminProductDomain;
import kr.co.mpnp.admin.vo.AdminProductVO;

public class AdminProductService {
	
	AdminProductDAO apDAO =AdminProductDAO.getInstance();
	
	
	
	
	
	//상품카테고리 : json

	 public String SubCategory(String mainid) throws SQLException{ 
		 JSONObject jsonObj = new JSONObject(); 
		 boolean resultFlag=false;
	 
	 List<AdminCategoryDomain> list= apDAO.selectCategory(mainid);
	
	 	JSONObject jsonTemp=null; 
	 	JSONArray jsonArr = new JSONArray();
	 //db조회결과를 JsonObject에 할당
	 for(AdminCategoryDomain ad : list) {
		
		 jsonTemp = new JSONObject();
		 //DB조회결과를 JSONObject에 할당
		 jsonTemp.put("subname", ad.getSubname());
		 jsonTemp.put("subid", ad.getSubid());
		 //값을 가진 JSONObject을 JSONArray할당
		 jsonArr.add(jsonTemp);
	 }//end for 

	 //모든조회결과를 가진 JSONArray를 JSONObject에 할당
	 	jsonObj.put("subData", jsonArr);
		 jsonObj.put("resultFlag", !resultFlag);
		 jsonObj.put("main", mainid);
	 
	 
	 return jsonObj.toJSONString(); 
	 }//SubCategory
	 
	 //상품카테고리 : 
	 public List<AdminCategoryDomain> searchCategory2(String mainid){
		 
		 List<AdminCategoryDomain> list= apDAO.selectCategory(mainid);
		 
		 return list;
	 }
	 
	 //상품목록
	public List<AdminProductDomain> SearchPrdList(AdminProductVO apVO){
		List<AdminProductDomain> list=apDAO.selectPrd(apVO);
		
		System.out.println(list);
		return list;
	}
	//상품상세보기
	public AdminProductDomain searchPrdDetail(String productid) {
		AdminProductDomain ap =apDAO.selectPrdDetail(productid);
		return ap;
	}
	
	//상품이미지
	public List<AdminProductDomain> searchPrdImg(String productid){
		
		List<AdminProductDomain> list= apDAO.selectPrdImg(productid);
	
		
		return list;
		
	}

	//상품 추가
	public void addProduct(AdminProductVO apVO) {
		String prID="";
	
		prID=apDAO.selectProductId();
		
		apVO.setProductid(prID); //vo에 코드 저장
		if(apVO.getProductid()!=null) {
			apDAO.insertProduct(apVO);
			
		}
		
	
	
	}//addProduct
	
	public void modifyProduct(AdminProductVO apVO) {
		apDAO.updateProduct(apVO);
		
	}
	
	//상품이미지

	public static void main(String[] args) {
		AdminProductService as=new AdminProductService();
		try {
			System.out.println(as.SubCategory("m0001"));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
	
	
}
