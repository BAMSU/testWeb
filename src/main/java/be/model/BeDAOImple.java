package be.model;


import org.mybatis.spring.SqlSessionTemplate;

public class BeDAOImple implements BeDAO {

	
	private SqlSessionTemplate sqlMap;

	public BeDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public int BeJoin(BeDTO dto) {

		int result = sqlMap.insert("beJoin",dto);
		
		return result;
	}
	
	public int BeLogin(BeDTO dto) {
		
		BeDTO dto2 = sqlMap.selectOne("beLogin", dto);
		
		// dbid dbpwd db에서 가져온 정보
		// inid inpwd 입력된 정보
		
		String dbid = dto2.getBe_id();
		String dbpwd = dto2.getBe_pwd();
		String inid = dto.getBe_id();
		String inpwd = dto.getBe_pwd();
		
		//아이디가 맞으면
		if(dbid.equals(inid)) {
			//아이디 비번 모두 맞으면
			if(dbpwd.equals(inpwd)) {
				return 1;
			}else {
				//비밀번호 틀리면
				return 0;
			}
		}
		return 0;
	}
	
	public BeDTO loginInfo(String be_id) {
	
		BeDTO logdto = sqlMap.selectOne("loginfo", be_id);
		
		return logdto;
	}
}










