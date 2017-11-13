package hallStats.model;

import java.util.*;

import org.apache.commons.collections.map.HashedMap;
import org.mybatis.spring.SqlSessionTemplate;

public class HallStatsDAOImple implements HallStatsDAO {
	
	private SqlSessionTemplate sst;
	private Calendar now;
	private int cm;
	
	public HallStatsDAOImple(SqlSessionTemplate sst) {
		this.sst = sst;
		now = Calendar.getInstance();
		cm = now.get(Calendar.MONTH)+1;
	}

	public List getHallStatsList(int hallIdx,String type) {
		Map m = new HashMap();
		m.put("hallIdx", hallIdx);
		m.put("type", type);
		return sst.selectList("hallStatsSQL",m);
	}

	public int getHallStatsRank(int hallIdx, String type) {
		Map m = new HashMap();
		m.put("hallIdx", hallIdx);
		m.put("type", type);
		m.put("m1", cm-3);
		m.put("m2", cm-2);
		m.put("m3", cm-1);
		return sst.selectOne("hallStatsRankSQL", m);
	}

	public int getHallCount() {
		return sst.selectOne("hallCountSQL");
	}

	public int upHallStats(int hallIdx, String type) {
		Map m = new HashMap();
		m.put("hallIdx", hallIdx);
		m.put("type", type);
		m.put("month", cm);
		return sst.update("hallStatsUpSQL", m);
	}

}
