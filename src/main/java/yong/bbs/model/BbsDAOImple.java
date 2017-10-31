package yong.bbs.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class BbsDAOImple implements BbsDAO {
	
	private SqlSessionTemplate sqlMap;

	public BbsDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}


	public int bbsWrite(BbsDTO dto) {
		return sqlMap.insert("bbsWrite", dto);
	}
	
	public List<BbsDTO> bbsAllList(int cp, int ls) {
		Map data = new HashMap();
		int startnum=(cp-1)*ls+1;
		int endnum=cp*ls;
		data.put("startnum", startnum);
		data.put("endnum", endnum);
		return sqlMap.selectList("bbsAllList", data);
	}
	
	public BbsDTO bbsContent(int idx) {
		return sqlMap.selectOne("bbsContent", idx);
	}
	
	public int getTotalCnt() {
		int cnt = sqlMap.selectOne("bbsTotalCnt");
		return cnt==0?1:cnt;
	}

}
