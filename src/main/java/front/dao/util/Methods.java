package front.dao.util;

import java.util.List;

import front.entity.GeneId;
import front.entity.Member;
import front.entity.New;
/**
 * 查询方法接口
 * @author 王鸿175
 *
 */
public interface Methods {
	
		
	//模糊查询
	//以下2个查询黄麻的品种之一
	public List<GeneId> getCcGenesByLikeId(String id,PageUtil pageUtil);
	
	public List<GeneId> getCoGenesByLikeId(String id,PageUtil pageUtil);
	//查询红麻的一个品种
	public List<GeneId> getHcaGenesByLikeId(String id,PageUtil pageUtil);
	
	//具体查询
	public List<GeneId> getCcGenesByDetailId(String id,PageUtil pageUtil);
	
	public List<GeneId> getCoGenesByDetailId(String id,PageUtil pageUtil);
	//查询红麻的一个品种
	public List<GeneId> getHcaGenesByDetailId(String id,PageUtil pageUtil);
	
	//计算每页个数
	public int count(String tableName);
	//计算符合条件的个数
	public int countSelect(String tableName,String id);
	
	//成员的方法
	public Member selectOneMember(int id);
	public List<Member> selectAllMembers(PageUtil pageUtil);
	
	//新闻的方法
	public New selectOneNew(int id);
	public List<New> selectAllNews(PageUtil pageUtil);
}
