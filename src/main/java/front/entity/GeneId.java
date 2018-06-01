package front.entity;



/**
 * 一个基因编号，包括了 gene, cds 和 蛋白序列
 *
 * @author Fish
 * */

public class GeneId
{
    // 主要的基因编号
    private String id = null;

    // 基因序列
    private String gene = null;

    // cds 序列
    private String cds = null;

    // 蛋白序列
    private String pro = null;

    public GeneId()
    {}

    public GeneId(String id)
    {
        this.id = id;
    }

    public String getId()
    {
        return id;
    }

    public void setId(String id)
    {
        this.id = id;
    }

    public String getGene()
    {
        return gene;
    }

    public void setGene(String gene)
    {
        this.gene = gene;
    }

    public String getCds()
    {
        return cds;
    }

    public void setCds(String cds)
    {
        this.cds = cds;
    }

    public String getPro()
    {
        return pro;
    }

    public void setPro(String pro)
    {
        this.pro = pro;
    }

    @Override
    public String toString()
    {
        return "GeneId{" +
                "id='" + id + '\'' +
                ", gene='" + gene + '\'' +
                ", cds='" + cds + '\'' +
                ", pro='" + pro + '\'' +
                '}';
    }
}
