package be.model;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		
		String dbid = dto2.getBe_id() != null? dto2.getBe_id():"0";
		String dbpwd = dto2.getBe_pwd() != null? dto2.getBe_pwd():"0";
		
		
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
	public int regBouq(BouqDTO dto) {
		
		int result = sqlMap.insert("regBouq",dto);
		return result;
	}
	
	public List<SDMYDTO> beItemListSDMY(String besname) {
		
		SDMYDTO dto2 = new SDMYDTO();
		dto2.setSdmy_be(besname);
		
		List<SDMYDTO> list = sqlMap.selectList("beListSDMY",dto2);
		
		return list;
	}
	public List<CarDTO> beItemListCar(String besname) {
		
		CarDTO dto = new CarDTO();
		dto.setCar_be(besname);
		
		List<CarDTO> list = sqlMap.selectList("beListCar", dto);
		
		return list;
	}
	public List<ShoesDTO> beItemListShoes(String besname) {
		
		ShoesDTO dto = new ShoesDTO();
		dto.setShoes_be(besname);
		
		List<ShoesDTO> list = sqlMap.selectList("beListShoes", dto);

		return list;
	}
	public List<BouqDTO> beItemListBouq(String besname) {
		
		BouqDTO dto = new BouqDTO();
		dto.setBouq_be(besname);
		
		List<BouqDTO> list = sqlMap.selectList("beListBouq", dto);
		
		return list;
	}
	public SDMYDTO itemDetailSDMY(String be_name) {
		SDMYDTO dto = (SDMYDTO)sqlMap.selectOne("itemDetailSDMY", be_name);
		return dto;
	}
	public CarDTO itemDetailCar(String car_idx) {
		CarDTO dto = (CarDTO)sqlMap.selectOne("itemDetailCar",car_idx);
		return dto;
	}
	public ShoesDTO itemDetailShoes(String shoes_idx) {
		ShoesDTO dto = (ShoesDTO)sqlMap.selectOne("itemDetailShoes",shoes_idx);
		return dto;
	}
	public BouqDTO itemDetailBouq(String bouq_idx) {
		BouqDTO dto = (BouqDTO)sqlMap.selectOne("itemDetailBouq",bouq_idx);
		return dto;
	}
	
	public int delItem(String columName, String idx, String tableName) {
		
		int result = 0;
		
		if(tableName.equals("be_car")) {
			result = sqlMap.delete("delCar",idx);
		}else if(tableName.equals("be_shoes")) {
			result = sqlMap.delete("delShose",idx);
		}else if(tableName.equals("be_bouq")) {
			result = sqlMap.delete("delBouq",idx);
		}else {
			result = sqlMap.delete("delSDMY",idx);
		}
		
		return result;
	}
	
	///////////////////////		관리자승인대기 관련 메서드		///////////////////////	
	
	public List<SDMYDTO> nItemListSDMY(String be_name) {
		
		List<SDMYDTO> list = sqlMap.selectList("nSDMY", be_name);
		
		return list;
	}
	public List<CarDTO> nItemListCar(String be_name) {

		List<CarDTO> list = sqlMap.selectList("nCar", be_name);
		
		return list;
	}
	public List<ShoesDTO> nItemListShoes(String be_name) {

		List<ShoesDTO> list = sqlMap.selectList("nShoes", be_name);
		
		return list;
	}
	public List<BouqDTO> nItemListBouq(String be_name) {

		List<BouqDTO> list = sqlMap.selectList("nBouq", be_name);
		
		return list;
	}
	
	
	
	
	
}










