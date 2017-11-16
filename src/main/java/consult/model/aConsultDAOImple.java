package consult.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class aConsultDAOImple implements aConsultDAO {

	
private SqlSessionTemplate sqlMap;
	
	
	public aConsultDAOImple(SqlSessionTemplate sqlMap) {
		this.sqlMap = sqlMap;
	}
	
	public List aCList() {
		return sqlMap.selectList("consultaa");
	}
	
}
