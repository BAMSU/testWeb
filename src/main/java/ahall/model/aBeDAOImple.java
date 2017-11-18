package ahall.model;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;

public class aBeDAOImple implements aBeDAO {

	
	private SqlSessionTemplate sqlMap;

	public aBeDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public List beJoin(String type) {
		if(type.equals("0")) {
			return sqlMap.selectList("beLista");
		} else {
			if(type.equals("1")) {
				return sqlMap.selectList("beListb", "n");
			}
			return sqlMap.selectList("beListb", "y");
		}
		
	}
	
	public int bebe1(int be_idx) {
		return sqlMap.update("updateBebe1", be_idx);
	}
	
	
	public int bebe2(int be_idx) {
		return sqlMap.update("updateBebe2", be_idx);
	}
	
	public int getTotalBe() {
		return sqlMap.selectOne("totalaBe");
	}
	
	public int getTotalBe1() {
		return sqlMap.selectOne("totalaBe1");
	}
	
	public int getTotalBe2() {
		return sqlMap.selectOne("totalaBe2");
	}
	
	public int getTotalFq() {
		return sqlMap.selectOne("totalaFq");
	}
	
	public int getTotalFq1() {
		return sqlMap.selectOne("totalaFq1");
	}
	
	public int getTotalFq2() {
		return sqlMap.selectOne("totalaFq2");
	}
	public List BeaList(int cp, int ls, String type) {
        Map m = new HashMap();
        m.put("startnum", (cp-1)*ls+1);
        m.put("endnum", cp*ls);
        
       
        if(type.equals("0")) {
			return sqlMap.selectList("abePList",m);
		} else {
			if(type.equals("1")) {
				type="n";
				m.put("type", type);
				return sqlMap.selectList("abePList2",m);
			}
			type="y";
			m.put("type", type);
			return sqlMap.selectList("abePList2", m);
		}
     }
	
	public List FqaList(int cp, int ls, String type) {
        Map m = new HashMap();
        m.put("startnum", (cp-1)*ls+1);
        m.put("endnum", cp*ls);
        m.put("type", type);
        if(type.equals("0")) {
			return sqlMap.selectList("afqPList",m);
		} else {
			if(type.equals("1")) {
				return sqlMap.selectList("afqPList2",m);
			}
			return sqlMap.selectList("afqPList2", m);
		}
     }
	
}










