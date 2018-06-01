package front.dao.util;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import front.entity.New;

public class NewMap implements RowMapper<New> {

	public New mapRow(ResultSet rs, int num) throws SQLException {
		New new1 = new New();
		new1.setId(rs.getInt("id"));
		new1.setTime(rs.getDate("time"));
		new1.setContent(rs.getString("content"));
		return new1;
	}

}
