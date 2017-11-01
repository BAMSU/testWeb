package hall.model;

import org.mybatis.spring.SqlSessionTemplate;

public class HallDAOImple implements HallDAO {
	
	private SqlSessionTemplate sst;
	
	public HallDAOImple(SqlSessionTemplate sst) {
		this.sst = sst;
	}

	public HallDTO HallInfo(int idx) {
		return sst.selectOne("hallInfoSQL",idx);
	}

}
