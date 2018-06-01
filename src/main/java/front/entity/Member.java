package front.entity;

import java.util.Date;

/**
 * 
 * 
 *
 * @author Fish
 * */
public class Member
{
    /*
    * CREATE TABLE members(
      id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
      name VARCHAR(64),
      sex VARCHAR(8),
      birth DATE,
      intro VARCHAR(256)
      );
    * */

    private Integer id = null;
    private String name = null;
    private String sex = null; 
    private Date birth = null;
    private String intro = null;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	@Override
	public String toString() {
		return "Member [id=" + id + ", name=" + name + ", sex=" + sex + ", birth=" + birth + ", intro=" + intro + "]";
	}
   
   
  
}
