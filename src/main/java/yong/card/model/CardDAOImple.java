package yong.card.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class CardDAOImple implements CardDAO{
private SqlSessionTemplate sqlMap;
	
	public CardDAOImple(SqlSessionTemplate sqlMap) {
		this.sqlMap = sqlMap;
	}
	public List<CardDTO> cardList(int cp, int listSize) {
		Map data=new HashMap();
		int startnum=(cp-1)*listSize+1;
		int endnum=cp*listSize;
		data.put("startnum", startnum);
		data.put("endnum",endnum);
		List<CardDTO> list= sqlMap.selectList("cardlist",data);
		return list;
	}
	public int getTotalCnt() {
		int count = sqlMap.selectOne("totalCnt");
		return count;
	}

}
