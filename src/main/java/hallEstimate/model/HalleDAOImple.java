package hallEstimate.model;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.web.bind.annotation.RequestMapping;

public class HalleDAOImple implements HalleDAO {

	private SqlSessionTemplate sqlMap;
	
	public HalleDAOImple(SqlSessionTemplate sqlMap){
		super();
		this.sqlMap=sqlMap;
	}
	
	

	public List<HalleDTO> hallestlist(HalleDTO dto) {
		List<HalleDTO> estlist=sqlMap.selectList("hall_estlistSQL", dto);
		return estlist;
	}



	public List<HalleDTO> hallUpdate(HalleDTO edto) {
		List<HalleDTO> list = sqlMap.selectList("hall_estimateSQL", edto);
		return list;
	}

	public List<HalleDTO> estfind(String hall_type, String guest, String interval) {
		Map map = new HashMap();
		map.put("hall_type", hall_type);
		map.put("guest",guest);
		map.put("interval",interval);
		List<HalleDTO> list = sqlMap.selectList("hall_estlistSQL",map);
		return list;
	}



	public int hallestAdd(HalleDTO edto) {
		int count = sqlMap.insert("hallestAdd", edto);
		return count;
	}



}
