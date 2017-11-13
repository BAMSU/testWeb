package mypageAsk.model;

import org.mybatis.spring.SqlSessionTemplate;

public class MypageAskDAOImple implements MypageAskDAO {

	
	private SqlSessionTemplate sqlMap;

	public MypageAskDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
}
