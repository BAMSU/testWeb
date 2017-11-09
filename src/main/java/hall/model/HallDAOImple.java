package hall.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class HallDAOImple implements HallDAO {
	
	private SqlSessionTemplate sst;
	
	public HallDAOImple(SqlSessionTemplate sst) {
		this.sst = sst;
	}

	public HallDTO getHallInfo(int idx) {
		return sst.selectOne("hallInfoSQL",idx);
	}

	public List getHallList() {
		return sst.selectList("hallCompareFormSQL");
	}

	public List getHallListByGu(String gu) {
		return sst.selectList("hallAddSearchByGuSQL",gu);
	}

	public List getHallListByName(String name) {
		return sst.selectList("hallAddSearchByNameSQL",name);
	}

}
