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
	public SDMYDTO itemDetailSDMY(String sdmy_be) {
		SDMYDTO dto = (SDMYDTO)sqlMap.selectOne("itemDetailSDMY", sdmy_be);
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
	public BeDTO itemDetailBe(String be_name) {
		BeDTO bdto = (BeDTO)sqlMap.selectOne("itemDetailBe",be_name);
		return bdto;
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
	
	public int updateSDMY(SDMYDTO dto) {
		int result = sqlMap.update("updateSDMY", dto);
		return result;
	}
	public int updateCar(CarDTO dto) {
		int result = sqlMap.update("updateCar", dto);
		return result;
	}
	public int updateShoes(ShoesDTO dto) {
		int result = sqlMap.update("updateShoes", dto);
		return result;
	}
	public int updateBouq(BouqDTO dto) {
		int result = sqlMap.update("updateBouq", dto);
		return result;
	}
	
	public List<SDMYDTO> ItemListStudio(String category,int cp, int ls) {
		
		Map data = new HashMap();
		int startnum = (cp-1)*ls+1;
		int endnum = (cp*ls);
		
		data.put("startnum", startnum);
		data.put("endnum", endnum);
		data.put("category", category);
		
		List<SDMYDTO> list = sqlMap.selectList("ListStudio", data);
		return list;
	}
	public List<SDMYDTO> ItemListDress(String category,int cp, int ls) {
		Map data = new HashMap();
		int startnum = (cp-1)*ls+1;
		int endnum = (cp*ls);
		
		data.put("startnum", startnum);
		data.put("endnum", endnum);
		data.put("category", category);
		
		List<SDMYDTO> list = sqlMap.selectList("ListStudio", data);
		return list;
	}
	public List<SDMYDTO> ItemListMakeup(String category,int cp, int ls) {
		Map data = new HashMap();
		int startnum = (cp-1)*ls+1;
		int endnum = (cp*ls);
		
		data.put("startnum", startnum);
		data.put("endnum", endnum);
		data.put("category", category);
		
		List<SDMYDTO> list = sqlMap.selectList("ListStudio", data);
		return list;
	}
	public List<SDMYDTO> ItemListSuit(String category,int cp, int ls) {
		Map data = new HashMap();
		int startnum = (cp-1)*ls+1;
		int endnum = (cp*ls);
		
		data.put("startnum", startnum);
		data.put("endnum", endnum);
		data.put("category", category);
		
		List<SDMYDTO> list = sqlMap.selectList("ListStudio", data);
		return list;
	}
	public List<CarDTO> ItemListCar(int cp, int ls) {
		Map data = new HashMap();
		int startnum = (cp-1)*ls+1;
		int endnum = (cp*ls);
		
		data.put("startnum", startnum);
		data.put("endnum", endnum);
		
		List<CarDTO> list = sqlMap.selectList("ListCar",data);
		return list;
	}
	public List<ShoesDTO> ItemListShoes(int cp, int ls) {
		Map data = new HashMap();
		int startnum = (cp-1)*ls+1;
		int endnum = (cp*ls);
		
		data.put("startnum", startnum);
		data.put("endnum", endnum);
		
		List<ShoesDTO> list = sqlMap.selectList("ListShoes",data);
		return list;
	}
	public List<BouqDTO> ItemListBouq(int cp, int ls) {
		Map data = new HashMap();
		int startnum = (cp-1)*ls+1;
		int endnum = (cp*ls);
		
		data.put("startnum", startnum);
		data.put("endnum", endnum);
		
		List<BouqDTO> list = sqlMap.selectList("ListBouq",data);
		return list;
	}
	//pagination related
	public int getStudioTotalCnt() {
		int result = sqlMap.selectOne("StudioTotalCnt");
		return result;
	}
	public int getDressTotalCnt() {
		int result = sqlMap.selectOne("DressTotalCnt");
		return result;
	}
	public int getMakeupTotalCnt() {
		int result = sqlMap.selectOne("MakeupTotalCnt");
		return result;
	}
	public int getSuitTotalCnt() {
		int result = sqlMap.selectOne("SuitTotalCnt");
		return result;
	}
	public int getCarTotalCnt() {
		int result = sqlMap.selectOne("CarTotalCnt");
		return result;
	}
	public int getShoesTotalCnt() {
		int result = sqlMap.selectOne("ShoesTotalCnt");
		return result;
	}
	public int getBouqTotalCnt() {
		int result = sqlMap.selectOne("BouqTotalCnt");
		return result;
	}
	public void sdmyReadNum(String sdmy_be) {
		sqlMap.selectOne("sdmyReadNum",sdmy_be);
	}
	public void carReadNum(String car_idx) {
		sqlMap.update("carReadNum",car_idx);
	}
	public void shoesReadNum(String shoes_idx) {
		sqlMap.update("shoesReadNum",shoes_idx);
	}
	public void bouqReadNum(String bouq_idx) {
		sqlMap.update("bouqReadNum",bouq_idx);
	}
	
	
}










