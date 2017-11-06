package consult.model;

import java.util.List;




public interface ConsultDAO {
	
	public int consultWrite(ConsultDTO dto);
	public List<ConsultDTO> consultList(int cp, int ls);
	public int getTotelCont();
	public int consultDel(int idx);
	public ConsultDTO consultContent(int idx);
	public int consultUpdate(ConsultDTO dto,int idx);

}