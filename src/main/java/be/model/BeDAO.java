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
	
	public SDMYDTO itemDetailSDMY(String be_name);
	public CarDTO itemDetailCar(String car_idx);
	public ShoesDTO itemDetailShoes(String shoes_idx);
	public BouqDTO itemDetailBouq(String bouq_idx);
	
	public int delItem(String columName, String idx, String tableName);
	
	public List<SDMYDTO> nItemListSDMY(String be_name);
	public List<CarDTO> nItemListCar(String be_name);
	public List<ShoesDTO> nItemListShoes(String be_name);
	public List<BouqDTO> nItemListBouq(String be_name);
	
	public int updateSDMY(SDMYDTO dto);
	public int updateCar(CarDTO dto);
	public int updateShoes(ShoesDTO dto);
	public int updateBouq(BouqDTO dto);
	
	public List<SDMYDTO> ItemListStudio(String category);
	public List<SDMYDTO> ItemListDress(String category);
	public List<SDMYDTO> ItemListMakeup(String category);
	public List<SDMYDTO> ItemListSuit(String category);
	public List<CarDTO> ItemListCar();
	public List<ShoesDTO> ItemListShoes();
	public List<BouqDTO> ItemListBouq();
	
}













