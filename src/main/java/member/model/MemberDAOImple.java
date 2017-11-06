package member.model;


import java.sql.*;
import java.util.*;

import org.apache.commons.collections.map.HashedMap;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


public class MemberDAOImple implements MemberDAO {


	private SqlSessionTemplate sqlMap;
	
	public MemberDAOImple(SqlSessionTemplate sqlMap) {
		super();
		this.sqlMap = sqlMap;
	}
	
	public int Member_Login(String member_id,String member_pwd){
		int count = sqlMap.selectOne("memberLogin",member_id);
		if(count==0) {
			return 0;
		} else {
			String pwd = sqlMap.selectOne("memberLogin2",member_id);
			if(pwd.equals(member_pwd)) {
				return 1;
			} else {
				return 0;
			}
		}
	}
	
	
}
