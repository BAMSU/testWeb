package be.model;


import java.util.List;

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
	
	public int regSDMY(SDMYDTO dto) {
		
		int result = sqlMap.insert("regSDMY", dto);
				
		return result;
	}
	public int regCar(CarDTO dto) {
		
		int result = sqlMap.insert("regCar", dto);
		
		return result;
	}
	public int regShoes(ShoesDTO dto) {
		
		int result = sqlMap.insert("regShoes",dto);
		
		return result;
	}
	
	public List<SDMYDTO> beItemListSDMY(String besname) {
		
		SDMYDTO dto2 = new SDMYDTO();
		dto2.setSdmy_be(besname);
		
		List<SDMYDTO> list = sqlMap.selectList("beListSDMY",dto2);
		
		return list;
	}
	public SDMYDTO itemDetailSDMY(String be_name) {
		
		SDMYDTO dto = (SDMYDTO)sqlMap.selectOne("itemDetailSDMY", be_name);
		
		return dto;
		
	}
	
	
}










