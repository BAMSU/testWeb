package ahall.model;

import java.util.*;

import org.apache.commons.collections.map.HashedMap;
import org.mybatis.spring.SqlSessionTemplate;

public class aHallStatsDAOImple implements aHallStatsDAO {
	
	private SqlSessionTemplate sst;
	
	public aHallStatsDAOImple(SqlSessionTemplate sst) {
		this.sst = sst;
	}

	public List getHallStatsList(int hallIdx,String type) {
		Map m = new HashMap();
		m.put("hallIdx", hallIdx);
		m.put("type", type);
		return sst.selectList("hallStatsSQL",m);
	}

	public int getHallStatsRank(int hallIdx, String type) {
		Calendar now = Calendar.getInstance();
		Map m = new HashMap();
		m.put("hallIdx", hallIdx);
		m.put("type", type);
		m.put("m1", now.get(Calendar.MONTH)-2);
		m.put("m2", now.get(Calendar.MONTH)-1);
		m.put("m3", now.get(Calendar.MONTH));
		return sst.selectOne("hallStatsRankSQL", m);
	}

	public int getHallCount() {
		return sst.selectOne("hallCountSQL");
	}

}
