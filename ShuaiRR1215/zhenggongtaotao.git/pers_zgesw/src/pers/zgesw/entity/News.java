package pers.zgesw.entity;

/**
 * @author shuai
 * @E_mail 1225803134@qq.com
 * @date 2017年7月17日
 * @description
 */
public class News {
	private Integer nid;
	private String nTitle;
	private String nContent;
	private String pubDate;

	public News() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getNid() {
		return nid;
	}

	public void setNid(Integer nid) {
		this.nid = nid;
	}

	public String getnTitle() {
		return nTitle;
	}

	public void setnTitle(String nTitle) {
		this.nTitle = nTitle;
	}

	public String getnContent() {
		return nContent;
	}

	public void setnContent(String nContent) {
		this.nContent = nContent;
	}

	public String getPubDate() {
		return pubDate;
	}

	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}

	@Override
	public String toString() {
		return "News [nid=" + nid + ", nTitle=" + nTitle + ", nContent=" + nContent + ", pubDate=" + pubDate + "]";
	}

}
