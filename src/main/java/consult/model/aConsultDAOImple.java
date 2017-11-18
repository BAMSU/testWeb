package consult.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class aConsultDAOImple implements aConsultDAO {

	
private SqlSessionTemplate sqlMap;
	
	
	public aConsultDAOImple(SqlSessionTemplate sqlMap) {
		this.sqlMap = sqlMap;
	}
	
	public List aCList(String type) {
		if(type.equals("0")) {
			return sqlMap.selectList("consultaa");
		}
		return sqlMap.selectList("consultaa2", type);
	}
	
	public List aCcon(int consult_idx) {
		
		return sqlMap.selectList("acontext", consult_idx);
	}
	
	
	public int updateCon(int idx) {
		
		return sqlMap.update("changeconsult", idx);
	}
	
	
	
	
	
}
