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
		
		// dbid dbpwd db���� ������ ����
		// inid inpwd �Էµ� ����
		
		String dbid = dto2.getBe_id();
		String dbpwd = dto2.getBe_pwd();
		String inid = dto.getBe_id();
		String inpwd = dto.getBe_pwd();
		
		//���̵� ������
		if(dbid.equals(inid)) {
			//���̵� ��� ��� ������
			if(dbpwd.equals(inpwd)) {
				return 1;
			}else {
				//��й�ȣ Ʋ����
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










