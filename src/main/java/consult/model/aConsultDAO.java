package consult.model;

import java.util.List;

public interface aConsultDAO {
	public List aCList(String type);
	public List aCcon(int consult_idx);
	public int updateCon(int idx);
}
