package yong.emp.model;

import java.util.List;

public interface EmpDAO {
	
	public int empAdd(EmpDTO dto);
	
	public int empDelete(String name);
	
	public List<EmpDTO> empList();
	
	public List<EmpDTO> empSearch(String name);
	
	public List<EmpDTO> empUpdate(int idx);
	
	public int empUpdateOk(EmpDTO dto);

}
