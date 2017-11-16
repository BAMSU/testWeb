package be.model;

import java.util.List;

public interface BeDAO {

	
	public int BeJoin(BeDTO dto);
	public int BeLogin(BeDTO dto);
	
	public BeDTO loginInfo(String be_id);
	
	public int regSDMY(SDMYDTO dto);
	public int regCar(CarDTO dto);
	public int regShoes(ShoesDTO dto);
	public int regBouq(BouqDTO dto);
	
	public List<SDMYDTO> beItemListSDMY(String besname);
	public List<CarDTO> beItemListCar(String besname);
	public List<ShoesDTO> beItemListShoes(String besname);
	public List<BouqDTO> beItemListBouq(String besname);
	
	public SDMYDTO itemDetailSDMY(String sdmy_be);
	public CarDTO itemDetailCar(String car_idx);
	public ShoesDTO itemDetailShoes(String shoes_idx);
	public BouqDTO itemDetailBouq(String bouq_idx);
	public BeDTO itemDetailBe(String be_name);
	
	public int delItem(String columName, String idx, String tableName);
	
	public List<SDMYDTO> nItemListSDMY(String be_name);
	public List<CarDTO> nItemListCar(String be_name);
	public List<ShoesDTO> nItemListShoes(String be_name);
	public List<BouqDTO> nItemListBouq(String be_name);
	
	public int updateSDMY(SDMYDTO dto);
	public int updateCar(CarDTO dto);
	public int updateShoes(ShoesDTO dto);
	public int updateBouq(BouqDTO dto);
	
	public List<SDMYDTO> ItemListStudio(String category,int cp, int ls);
	public List<SDMYDTO> ItemListDress(String category,int cp, int ls);
	public List<SDMYDTO> ItemListMakeup(String category,int cp, int ls);
	public List<SDMYDTO> ItemListSuit(String category,int cp, int ls);
	public List<CarDTO> ItemListCar(int cp, int ls);
	public List<ShoesDTO> ItemListShoes(int cp, int ls);
	public List<BouqDTO> ItemListBouq(int cp, int ls);
	
	//pagination
	public int getStudioTotalCnt();
	public int getDressTotalCnt();
	public int getMakeupTotalCnt();
	public int getCarTotalCnt();
	public int getSuitTotalCnt();
	public int getShoesTotalCnt();
	public int getBouqTotalCnt();
	
	//readNum
	public void sdmyReadNum(String sdmy_be);
	public void carReadNum(String car_idx);
	public void shoesReadNum(String shoes_idx);
	public void bouqReadNum(String bouq_idx);
	
}













