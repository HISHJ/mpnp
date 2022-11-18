package kr.co.mpnp.handler;

import java.io.IOException;
import java.io.Reader;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

/**
 * MyBatis Handler를 반환하는 일
 * @author user
 */
public class MyBatisHandler {

	private static MyBatisHandler mbh;
	private static SqlSessionFactory ssf;
	private MyBatisHandler() {
		org.apache.ibatis.logging.LogFactory.useLog4JLogging();
		// 각 DAO에 넣으면 하나한 넣어줘야하는데 여기에 넣으면 
		// handler를 얻기위해서는 모두 얘를 거치므로 모든다오가 실행될때마다 나오게하기위해 여기에 넣음
	}
	
	/**
	 * factory-method = "getInstance"
	 * @return
	 */
	public static MyBatisHandler getInstance() {
		if(mbh==null) {
			mbh = new MyBatisHandler();
		}
		return mbh;
	}
	
	private static SqlSessionFactory getSessionFactory()throws IOException {
		
		if(ssf==null) {
			// 1. 설정파일 연결 
			//String configPath = "users/user/git/project3/src/main/java/kr/co/mpnp/admin/dao/config/mybatis-config.xml";
			//String configPath = "kr.co.mpnp.admin.dao.config.mybatis-config";
			String configPath = "kr/co/mpnp/config/mybatis-config.xml";
			Reader reader = Resources.getResourceAsReader(configPath);
			
			// 2. MyBatis Framework 생성
			ssf = new SqlSessionFactoryBuilder().build(reader);
			
			// 3. 스트림 닫기 스트림만끊은거지 프레임워크는 살아있음
			if(reader!=null) {
				reader.close();
			}
			
		}
		System.out.println("MyBatisHandler ssf : " + ssf);
		return ssf;
	}
	
	/**
	 * MyBatis Handler 반환
	 * @return
	 */
	public SqlSession getHandler() {
		SqlSession session = null;
		
		try {
			System.out.println("MyBatisHandler session : "+session);
			session = getSessionFactory().openSession();
		} catch (IOException e) {
			System.out.println("여기잡힘");
			e.printStackTrace();
		}
		
		System.out.println("MyBatisHandler session : "+session);
		
		return session;
	}
	
	public void closeHandler(SqlSession session) {
		session.close();
	}
	
}