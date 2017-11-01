package hallPhoto.model;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

public class HallPhotoDAOImple implements HallPhotoDAO {
	
	private SqlSessionTemplate sst;
	
	public HallPhotoDAOImple(SqlSessionTemplate sst) {
		this.sst = sst;
	}

	public List hallPhoto(int hallIdx) {
		return sst.selectList("hallPhotoSQL", hallIdx);
	}

}
