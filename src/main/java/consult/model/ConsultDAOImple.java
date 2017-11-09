package consult.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.mybatis.spring.SqlSessionTemplate;



public class ConsultDAOImple implements ConsultDAO {

	
	private SqlSessionTemplate sqlMap;
	
	
	public ConsultDAOImple(SqlSessionTemplate sqlMap) {
		this.sqlMap = sqlMap;
	}


	public int consultWrite(ConsultDTO dto) {
		String tel = dto.getTel1()+dto.getTel2()+dto.getTel3();
		String email = dto.getEmail()+"@"+dto.getEmail2();
		
		Map data = new HashMap();
		data.put("name", dto.getName());
		data.put("gender", dto.getGender());
		data.put("tel", tel);
		data.put("email", email);
		data.put("reservation", dto.getReservation());
		data.put("context", dto.getContext());
		
		
	
		int count = sqlMap.insert("consultWrite",data);
		return count;
	
	}
	
	public List<ConsultDTO> consultList(int cp,int ls){
	
		Map data = new HashMap();
		int startnum = (cp-1)*ls+1;
		int endnum = cp*ls;
		
	
		data.put("startnum", startnum);
		data.put("endnum", endnum);
		
		List<ConsultDTO> list =sqlMap.selectList("ConsultList",data);
		return list;
	}
	
	public int getTotelCont() {
		int count = sqlMap.selectOne("consultTotelCnt");
		return count==0?1:count;
	}
	
	public int consultDel(int idx) {
		
		int count = sqlMap.delete("consultDelete", idx);
		return count;
	}
	
	public ConsultDTO consultContent(int idx) {
		ConsultDTO dto = sqlMap.selectOne("consultContent", idx);
		return dto;
	}
	
	
	public int consultUpdate(ConsultDTO dto,int idx) {
		
		String tel = dto.getTel1()+dto.getTel2()+dto.getTel3();
		String email = dto.getEmail()+"@"+dto.getEmail2();
		
		Map data = new HashMap();
		data.put("idx", idx);
		data.put("name", dto.getName());
		data.put("gender", dto.getGender());
		data.put("tel", tel);
		data.put("email", email);
		data.put("reservation", dto.getReservation());
		data.put("context", dto.getContext());
		
		int count = sqlMap.update("consultUpdate", data);
		return count;
	}

}
