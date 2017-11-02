package member.model;


import java.sql.*;
import java.util.*;

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
		int count = 
	}
}
