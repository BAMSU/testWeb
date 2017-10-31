package yong.emp.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class EmpDAOImple implements EmpDAO {
	
	private SqlSessionTemplate sqlMap;

	public EmpDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}

	public int empAdd(EmpDTO dto) {
		int count = sqlMap.insert("empInsert", dto);
		return count;
	}
	
	public int empDelete(String name) {
		int count = sqlMap.delete("empDelete", name);
		return count;
	}
	
	public List<EmpDTO> empList() {
		List<EmpDTO> arr = sqlMap.selectList("empList");
		return arr;
	}
	
	public List<EmpDTO> empSearch(String name) {
		List<EmpDTO> arr = sqlMap.selectList("empSearch", name);
		return arr;
	}
	
	public List<EmpDTO> empUpdate(int idx) {
		List<EmpDTO> arr = sqlMap.selectOne("empUpdate", idx);
		return arr;
	}
	
	public int empUpdateOk(EmpDTO dto) {
		int count = sqlMap.update("empUpdateOk", dto);
		return count;
	}

}
