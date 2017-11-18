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
	
	public int getTotelContByHall2() {
        return sst.selectOne("totalaHall");
     }
	
	public List hallaList(int cp, int ls) {
        Map m = new HashMap();
        m.put("startnum", (cp-1)*ls+1);
        m.put("endnum", cp*ls);
        return sst.selectList("ahallPList",m);
     }

	public aHallDTO getHallInfo(int idx) {
		return sst.selectOne("ahallInfoSQL",idx);
	}

	public List getHallList() {
		return sst.selectList("ahallCompareFormSQL");
	}
	
	public List getHallGu() {
		return sst.selectList("ahallGuSQL");
	}
	public List getHallListByGu(String gu) {
		return sst.selectList("ahallAddSearchByGuSQL",gu);
	}

	public List getHallListByName(String name) {
		return sst.selectList("ahallAddSearchByNameSQL",name);
	}
	public int insertWd(aHallDTO dto) {
		
		int result = sst.insert("ainserthall", dto);
		
		int max = sst.selectOne("amax");
		
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
		return sst.update("aupdatehall", dto);
	}
	
	public int deleteWd(int idx) {
		sst.delete("deleteR", idx);
		sst.delete("deleteH", idx);
		sst.delete("deleteI", idx);
		return sst.delete("adeletehall", idx);
	}

}