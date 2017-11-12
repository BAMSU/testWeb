package ahall.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class aHallDAOImple implements aHallDAO {
	
	private SqlSessionTemplate sst;
	
	public aHallDAOImple(SqlSessionTemplate sst) {
		this.sst = sst;
	}

	public aHallDTO getHallInfo(int idx) {
		return sst.selectOne("hallInfoSQL",idx);
	}

	public List getHallList() {
		return sst.selectList("hallCompareFormSQL");
	}
	
	public List getHallGu() {
		return sst.selectList("hallGuSQL");
	}
	public List getHallListByGu(String gu) {
		return sst.selectList("hallAddSearchByGuSQL",gu);
	}

	public List getHallListByName(String name) {
		return sst.selectList("hallAddSearchByNameSQL",name);
	}
	public int insertWd(aHallDTO dto) {
		
		int result = sst.insert("inserthall", dto);
		
		int max = sst.selectOne("max");
		
		Map m = new HashMap();
		m.put("hallIdx", max);
		for(int i = 1; i <= 12; i++) {
			m.put("month", i);
			sst.insert("insertStats1", m);
			sst.insert("insertStats2", m);
			sst.insert("insertStats3", m);
			sst.insert("insertStats4", m);
		}
		return result;
	}
	
	public int updateWd(aHallDTO dto) {
		return sst.update("updatehall", dto);
	}
	
	public int deleteWd(int idx) {
		return sst.delete("deletehall", idx);
	}

}