package be.model;

import java.util.List;

public interface BeDAO {

	
	public int BeJoin(BeDTO dto);
	
	public int BeLogin(BeDTO dto);
	
	public BeDTO loginInfo(String be_id);
	
	public int regSDMY(SDMYDTO dto);
	
	public int regCar(CarDTO dto);
	
	public int regShoes(ShoesDTO dto);
	
	public List<SDMYDTO> beItemListSDMY(String besname);
	
	public SDMYDTO itemDetailSDMY(String be_name);
}
