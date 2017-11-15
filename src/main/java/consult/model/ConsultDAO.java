package consult.model;

import java.util.List;




public interface ConsultDAO {
	
	public int consultWrite(ConsultDTO dto);
	public List<ConsultDTO> consultList(int cp, int ls,String name);
	public int getTotelCont();
	public int consultDel(int idx);
	public ConsultDTO consultContent(int idx);
	public int consultUpdate(ConsultDTO dto,int idx);
	public List<ConsultDTO> AllConsultList(int cp, int ls);
	
}
