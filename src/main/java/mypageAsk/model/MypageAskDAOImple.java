package mypageAsk.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class MypageAskDAOImple implements MypageAskDAO {

	
	private SqlSessionTemplate sqlMap;

	public MypageAskDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public List mypage_Ask(String name){
		return sqlMap.selectList("mypage_ask", name);
	}

}
