package front.dao.util;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import front.entity.Member;

public class MembersMap implements RowMapper<Member> {

	public Member mapRow(ResultSet rs, int num) throws SQLException {
		Member member = new Member();
		member.setId(rs.getInt("id"));
		member.setName(rs.getString("name"));
		member.setBirth(rs.getDate("birth"));
		member.setSex(rs.getString("sex"));
		member.setIntro(rs.getString("intro"));
		return member;
	}

}
