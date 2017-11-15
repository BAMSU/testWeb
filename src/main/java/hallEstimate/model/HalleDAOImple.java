package hallEstimate.model;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.web.bind.annotation.RequestMapping;

import hall.model.HallDTO;
import review.model.ReviewDTO;

public class HalleDAOImple implements HalleDAO {

	private SqlSessionTemplate sqlMap;
	
	public HalleDAOImple(SqlSessionTemplate sqlMap){
		super();
		this.sqlMap=sqlMap;
	}
	

	public List<HallDTO> hallList(String hallType, String menuType, String mealCost, String guest, String lineType,
			String search_text) {
		Map<String,String> map = new HashMap<String, String>();
		map.put("hallType",hallType);
		map.put("menuType", menuType);
		map.put("mealCost",mealCost);
		map.put("guest",guest);
		map.put("lineType",lineType);
		map.put("search_text",search_text);
		
		List<HallDTO> list = sqlMap.selectList("hall_searchview",map);
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



	
	

}
