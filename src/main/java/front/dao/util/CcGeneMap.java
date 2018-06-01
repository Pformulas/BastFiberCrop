package front.dao.util;

import java.sql.ResultSet;
import java.sql.SQLException;

import front.entity.GeneId;
import org.springframework.jdbc.core.RowMapper;

public class CcGeneMap implements RowMapper<GeneId> {

	public GeneId mapRow(ResultSet rs, int num) throws SQLException {
		
		GeneId geneId = new GeneId();
		geneId.setId(rs.getString("id"));
		geneId.setGene(rs.getString("gene"));
		geneId.setCds(rs.getString("cds"));
		geneId.setPro(rs.getString("pro"));
		return geneId;
	}

}
