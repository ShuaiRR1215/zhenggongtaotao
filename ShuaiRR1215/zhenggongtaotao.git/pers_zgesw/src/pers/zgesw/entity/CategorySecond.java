package pers.zgesw.entity;

import java.util.HashSet;
import java.util.Set;

public class CategorySecond {
	private Integer csid;
	private String csname;
	private Category category;
	
	private Set<SellInfo> sellInfos = new HashSet<SellInfo>();
	
	public CategorySecond() {
		super();
	}
	public Integer getCsid() {
		return csid;
	}
	public void setCsid(Integer csid) {
		this.csid = csid;
	}
	public String getCsname() {
		return csname;
	}
	public void setCsname(String csname) {
		this.csname = csname;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	
	public Set<SellInfo> getSellInfos() {
		return sellInfos;
	}
	public void setSellInfos(Set<SellInfo> sellInfos) {
		this.sellInfos = sellInfos;
	}
	@Override
	public String toString() {
		return "CategorySecond [csid=" + csid + ", csname=" + csname + ", category=" + category + "]";
	}
	
}
