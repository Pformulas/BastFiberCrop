package front.dao;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import front.dao.util.MembersMap;
import front.dao.util.Methods;
import front.dao.util.NewMap;
import org.aspectj.apache.bcel.generic.ReturnaddressType;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import front.dao.util.CcGeneMap;
import front.dao.util.PageUtil;
import front.entity.GeneId;
import front.entity.Member;
import front.entity.New;


@SuppressWarnings(value = { "all" })
public class SelectDao implements Methods {
	private JdbcTemplate jdbcTemplate;

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	

	//通过id模糊查询的工具方法
	private List getByLikeUtilClass(String tableName, String id, RowMapper rowMapper,PageUtil pageUtil) {
		String sql = "select id,gene,cds,pro from "+ tableName +" where id like ? limit ?,?"  ;
		Object[] objects = {"%" + id + "%",(pageUtil.getCurrentPage()-1)*pageUtil.getPageSize(),pageUtil.getPageSize()};
		return jdbcTemplate.query( sql, objects, rowMapper);
	}
	
	//精确查询的工具方法
	private List getByDetailUtilClass(String tableName, String id, RowMapper rowMapper,PageUtil pageUtil) {
		String sql = "select id,gene,cds,pro from "+ tableName +" where id = ? limit ?,?"  ;
		Object[] objects = {id,(pageUtil.getCurrentPage()-1)*pageUtil.getPageSize(),pageUtil.getPageSize()};
		return jdbcTemplate.query( sql, objects, rowMapper);
	}
	
	//计算每页个数的方法
	public int count(String tableName) {
		String sql = "SELECT count(*) from " + tableName ;
		List<Integer> list = jdbcTemplate.query(sql,new RowMapper<Integer>(){
			public Integer mapRow(ResultSet rt, int number) throws SQLException {
				return rt.getInt("count(*)");
			}
		});
		return list.get(0);
	}

	public int countSelect(String tableName,String id) {
		String sql = "SELECT count(*) from " + tableName + " where id like ?" ;
		Object[] objects = {"%" + id + "%"};
		List<Integer> list = jdbcTemplate.query(sql,objects,new RowMapper<Integer>(){
			public Integer mapRow(ResultSet rt, int number) throws SQLException {
				return rt.getInt("count(*)");
			}
		});
		return list.get(0);
	}


	public List<GeneId> getCcGenesByLikeId(String id, PageUtil pageUtil) {
		return getByLikeUtilClass("cc_genes", id, new CcGeneMap(),pageUtil);
	}


	public List<GeneId> getCoGenesByLikeId(String id, PageUtil pageUtil) {
		return getByLikeUtilClass("co_genes", id, new CcGeneMap(),pageUtil);
	}


	public List<GeneId> getHcaGenesByLikeId(String id, PageUtil pageUtil) {
		return getByLikeUtilClass("hca_genes", id, new CcGeneMap(),pageUtil);
	}


	public List<GeneId> getCcGenesByDetailId(String id, PageUtil pageUtil) {
		return getByDetailUtilClass("cc_genes", id, new CcGeneMap(),pageUtil);
	}


	public List<GeneId> getCoGenesByDetailId(String id, PageUtil pageUtil) {
		return getByDetailUtilClass("co_genes", id, new CcGeneMap(),pageUtil);
	}


	public List<GeneId> getHcaGenesByDetailId(String id, PageUtil pageUtil) {
		return getByDetailUtilClass("hca_genes", id, new CcGeneMap(),pageUtil);
	}

	public New selectOneNew(int id) {
		
		return (New) select("news",id,new NewMap()).get(0);
	}

	private List select(String tableName, int id, RowMapper rowMapper) {
		String sql = "select * from "+ tableName +" where id = ?" ;
		Object[] objects = {id};
		return jdbcTemplate.query( sql, objects, rowMapper);
	}
	
	private List select(String tableName, PageUtil pageUtil,RowMapper rowMapper) {
		String sql = "select * from "+ tableName +" limit ?,?";
		Object[] objects = {(pageUtil.getCurrentPage()-1)*pageUtil.getPageSize(),pageUtil.getPageSize()};
		return  jdbcTemplate.query( sql,objects,rowMapper);
	}
	
	public List<New> selectAllNews(PageUtil pageUtil) {
		return 	select("news", pageUtil,new NewMap());
	}
	
	public Member selectOneMember(int id) {
		return (Member) select("members", id,new MembersMap()).get(0);
	}


	public List<Member> selectAllMembers(PageUtil pageUtil) {
		return select("members", pageUtil,new MembersMap());
	}

	

}
