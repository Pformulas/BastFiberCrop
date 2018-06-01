package front.entity;



/**
 * 
 * 
 *
 * @author Fish
 * */
public class Gene
{
    /*
      CREATE TABLE genes(
      id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
      snp_id VARCHAR(32), # snp 缂傛牕褰�
      chrom VARCHAR(64), # 閺屾捁澹婃担鎾剁椽閸欙拷
      snp_pos SMALLINT UNSIGNED, # snp 娴ｅ秶鍋�
      ref VARCHAR(8),
      a VARCHAR(8)
      );
    * */

    private Integer id = null;
    private String snp_id = null;
    private String chrom = null;
    private Integer snp_pos = null;
    private String ref = null;
    private String a = null;

    public Gene()
    {}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getSnp_id() {
		return snp_id;
	}

	public void setSnp_id(String snp_id) {
		this.snp_id = snp_id;
	}

	public String getChrom() {
		return chrom;
	}

	public void setChrom(String chrom) {
		this.chrom = chrom;
	}

	public Integer getSnp_pos() {
		return snp_pos;
	}

	public void setSnp_pos(Integer snp_pos) {
		this.snp_pos = snp_pos;
	}

	public String getRef() {
		return ref;
	}

	public void setRef(String ref) {
		this.ref = ref;
	}

	public String getA() {
		return a;
	}

	public void setA(String a) {
		this.a = a;
	}

	@Override
	public String toString() {
		return "Gene [id=" + id + ", snp_id=" + snp_id + ", chrom=" + chrom + ", snp_pos=" + snp_pos + ", ref=" + ref
				+ ", a=" + a + "]";
	}
	

   
}
