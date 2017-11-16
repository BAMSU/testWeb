package member.model;

public interface MemberDAO {

	public int Member_Login(String member_id,String member_pwd);
	
	public int MemberJoin(MemberDTO dto);
	
	
	public String MemberidFind(MemberDTO dto);
	public String getName(String id);
	public int Member_idCheck(String id);
	
}
