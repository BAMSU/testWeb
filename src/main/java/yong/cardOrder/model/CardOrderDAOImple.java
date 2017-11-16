package yong.cardOrder.model;

import org.mybatis.spring.SqlSessionTemplate;


public class CardOrderDAOImple implements CardOrderDAO {
private SqlSessionTemplate sqlMap;
	
	public CardOrderDAOImple(SqlSessionTemplate sqlMap) {
		this.sqlMap = sqlMap;
	}

	public int Order(CardOrderDTO dto) {
			int count = sqlMap.insert("OrderInsert",dto);
			return count;
	}
}
