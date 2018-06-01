package front.entity;

import java.util.Date;

/**
 * 
 * 
 *
 * @author Fish
 * */
public class New
{
    /*
    * CREATE TABLE news(
      id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
      content VARCHAR(512),
      time DATE
      );
    * */

    private Integer id = null;
    private String content = null;
    private Date time = null;

    public New()
    {}

    public New(Integer id, String content, Date time)
    {
        this.id = id;
        this.content = content;
        this.time = time;
    }

    public Integer getId()
    {
        return id;
    }

    public void setId(Integer id)
    {
        this.id = id;
    }

    public String getContent()
    {
        return content;
    }

    public void setContent(String content)
    {
        this.content = content;
    }

    public Date getTime()
    {
        return time;
    }

    public void setTime(Date time)
    {
        this.time = time;
    }

    @Override
    public String toString()
    {
        return "New{" +
                "id=" + id +
                ", content='" + content + '\'' +
                ", time=" + time +
                '}';
    }
}
