package front.dao.util;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

import front.entity.Gene;

public class GeneMap implements RowMapper<Gene> {

	public Gene mapRow(ResultSet rs, int num) throws SQLException {
		
		Gene gene = new Gene();
		gene.setId(rs.getInt("id"));
		gene.setChrom(rs.getString("chrom"));
		gene.setA(rs.getString("a"));
		gene.setRef(rs.getString("ref"));
		gene.setSnp_id(rs.getString("snp_id"));
		gene.setSnp_pos(rs.getInt("snp_pos"));
		return gene;
	}

}
