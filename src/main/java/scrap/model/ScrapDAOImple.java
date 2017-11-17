package scrap.model;

import java.util.*;

import org.mybatis.spring.SqlSessionTemplate;

public class ScrapDAOImple implements ScrapDAO {
	
	private SqlSessionTemplate sst;
	
	public ScrapDAOImple(SqlSessionTemplate sst) {
		this.sst = sst;
	}

	public int insertScrap(String memberName, int hallIdx) {
		Map m = new HashMap();
		m.put("memberName", memberName);
		m.put("hallIdx", hallIdx);
		return sst.insert("insertScrapSQL", m);
	}
	
	public int deleteScrap(String memberName, int hallIdx) {
		Map m = new HashMap();
		m.put("memberName", memberName);
		m.put("hallIdx", hallIdx);
		return sst.delete("deleteScrapSQL", m);
	}
	
	public ScrapDTO getScrap(String memberName, int hallIdx) {
		Map m = new HashMap();
		m.put("memberName", memberName);
		m.put("hallIdx", hallIdx);
		return sst.selectOne("getScrapSQL", m);
	}

}
