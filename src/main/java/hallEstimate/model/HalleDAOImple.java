package hallEstimate.model;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.jdbc.support.xml.SqlXmlValue;
import org.springframework.web.bind.annotation.RequestMapping;

import hall.model.HallDTO;
import room.model.RoomDTO;


public class HalleDAOImple implements HalleDAO {

	private SqlSessionTemplate sqlMap;
	
	public HalleDAOImple(SqlSessionTemplate sqlMap){
		super();
		this.sqlMap=sqlMap;
	}
	

	public List<HallDTO> hallList(String hallType, String menuType) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("hallType",hallType);
		map.put("menuType", menuType);
		
		List<HallDTO> list = sqlMap.selectList("hall_searchview1",map);
		return list;
	}
	
	public List<HalleDTO> hallList2(int est_guest,int meal_price,int meal_price2){
		Map map = new HashMap();
		map.put("est_guest", est_guest);
		map.put("price1", meal_price);
		map.put("price2", meal_price2);
		List<HalleDTO> list = sqlMap.selectList("hall_searchview2",map);
		return list;
	}
	
	public List<HallDTO> hallList3(String lineType, String search_text){
		Map map = new HashMap();
		map.put("lineType", lineType);
		map.put("search_text", search_text);
		List<HallDTO> list = sqlMap.selectList("hall_searchview3", map);
		return list;
	}


	public List<HallDTO> hallview() {
		List<HallDTO> list = sqlMap.selectList("hallsearchSQL");
		return list;
	}
	
	public List<HalleDTO> hallestList() {
		List<HalleDTO> list = sqlMap.selectList("hall_estlistSQL");
				return list;
	}
	
	public HalleDTO halles(int idx){
		HalleDTO dto = sqlMap.selectOne("hall3",idx);
		return dto;
	}

	
	public List<HallDTO> rankingList(){
		List<HallDTO> list = sqlMap.selectList("hallranking");
		return list;
		
	}


	public HallDTO halle(int idx) {
		HallDTO dto = sqlMap.selectOne("hall4",idx);
		return dto;
	}
	
	public List<RoomDTO> hallroom(int idx){
		List<RoomDTO> list = sqlMap.selectList("hallroom", idx);
		return list;
	}
	

}
