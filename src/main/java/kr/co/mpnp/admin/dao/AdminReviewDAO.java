package kr.co.mpnp.admin.dao;

import org.apache.ibatis.session.SqlSession;

import kr.co.mpnp.admin.vo.AdminReviewVO;
import kr.co.mpnp.handler.MyBatisHandler;


public class AdminReviewDAO {

	public AdminReviewDAO() {
		
	}
	
	public void insertReview(AdminReviewVO arVO){
		
		// 戚穿殖 五辞球照拭辞 朕学芝条壱 更条壱更条壱 梅澗汽 戚賎 MyBatis条澗陥
		// 1. MyBatis Handler 条奄
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		System.out.println("AdminReviewDAO mbh : "+ mbh);
		
		SqlSession ss = mbh.getHandler();
		System.out.println("AdminReviewDAO ss : "+ss);
		
		// 2. 汀軒叔楳 insert("Mapper焼戚巨",葵)
		System.out.println("食奄辞?");
		System.out.println("arVO : "+arVO);
		
		//int cnt = ss.insert("kr.co.mpnp.admin.dao.mapper.reviewMapper.insertReview",arVO);
		int cnt = ss.insert("kr.co.mpnp.admin.dao.mapper.reviewMapper.insertReview");
		System.out.println(cnt);
		//System.out.println(ss.insert("kr.co.mpnp.admin.dao.mapper.reviewMapper.insertReview",arVO)==null?"oo":"xx");

		// autocommit戚 照鞠奄凶庚拭 送羨 背操醤廃陥.
		// 鎧亜据廃幻鏑 叔楳菊聖凶研 搾嘘馬奄是背 cnt==1 しし
		if(cnt==1) {
			System.out.println(cnt+"闇 蓄亜");
			ss.commit();
		}else {
			System.out.println("汽戚斗蓄亜X");
		}
		
		// 3. MyBatis Handler 曽戟
		mbh.closeHandler(ss);
		
		// 走榎精 娃舘備 沙陥壱 DAO拭辞 処走幻 戚五辞球研 service拭辞 採牽檎吉陥.
		
	}
	
	public void deleteReview(String reviewId){
		
		// 戚穿殖 五辞球照拭辞 朕学芝条壱 更条壱更条壱 梅澗汽 戚賎 MyBatis条澗陥
		// 1. MyBatis Handler 条奄
		MyBatisHandler mbh = MyBatisHandler.getInstance();
		System.out.println("AdminReviewDAO mbh : "+ mbh);
		
		SqlSession ss = mbh.getHandler();
		System.out.println("AdminReviewDAO ss : "+ss);
		
		// 2. 汀軒叔楳 insert("Mapper焼戚巨",葵)
		System.out.println("食奄辞?");
		int cnt = ss.delete("kr.co.mpnp.admin.dao.mapper.reviewMapper.deleteReview",reviewId);
		
		if(cnt==1) {
			System.out.println(reviewId+"腰 板奄 肢薦");
			ss.commit();
		}else {
			System.out.println("汽戚斗蓄亜X");
		}
		
		// 3. MyBatis Handler 曽戟
		mbh.closeHandler(ss);
		
		// 走榎精 娃舘備 沙陥壱 DAO拭辞 処走幻 戚五辞球研 service拭辞 採牽檎吉陥.
		
	}
	
	
	
	public static void main(String[] args) {
		
		//AdminReviewDAO arDAO = new AdminReviewDAO();
		//System.out.println(arVO.toString());
		
		AdminReviewDAO arDAO = new AdminReviewDAO();
		AdminReviewVO arVO = new AdminReviewVO("AdminReviewDAO123123123","123123","55555","od0003");
		System.out.println("ししししししし"+arVO);
		arDAO.insertReview(arVO);
		//arDAO.deleteReview("r0013");
		
		
	}
	
	
	
	
	
}