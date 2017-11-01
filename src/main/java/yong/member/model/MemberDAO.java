package yong.member.model;

import java.util.List;

public interface MemberDAO {
	
	public int memberJoin(MemberDTO dto);
	
	public boolean idCheck(String id);
	
	public int member_login(String id, String pwd);
	
	public String getUserInfo(String id);
	
	public List<MemberDTO> memberList();

}
