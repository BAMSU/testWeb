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
	public List<CardDTO> cardList(int cp, int listSize, int type) {
		Map data=new HashMap();
		int startnum=(cp-1)*listSize+1;
		int endnum=cp*listSize;
		data.put("startnum", startnum);
		data.put("endnum",endnum);
		List<CardDTO> list;
		if(type==1){
			list= sqlMap.selectList("cardlist1",data);
		} else if(type==2){
			list= sqlMap.selectList("cardlist2",data);
		} else if(type==4){
			list= sqlMap.selectList("cardlist3",data);
		}else{
			list= sqlMap.selectList("cardlist4",data);
		}
		return list;
	}
	public int getTotalCnt() {
		int count = sqlMap.selectOne("ttc");
		return count;
	}
	public CardDTO cardSer(int idx) {
		CardDTO list = sqlMap.selectOne("CardSerList",idx);
		return list;
	}

}
