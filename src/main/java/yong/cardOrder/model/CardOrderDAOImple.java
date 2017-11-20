package yong.cardOrder.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

import yong.card.model.CardDTO;


public class CardOrderDAOImple implements CardOrderDAO {
private SqlSessionTemplate sqlMap;
	
	public CardOrderDAOImple(SqlSessionTemplate sqlMap) {
		this.sqlMap = sqlMap;
	}

	public int Order(CardOrderDTO dto) {
			int count = sqlMap.insert("OrderInsert",dto);
			return count;
	}

	public CardOrderDTO cardoder(String name) {
			CardOrderDTO dto = sqlMap.selectOne("cardname", name);
		return dto;
	}

	public void mobileup(String idx, String name) {
		Map data=new HashMap();
		data.put("idx", idx);
		data.put("name",name);
		int count = sqlMap.update("mobileup", data);
	}

}
