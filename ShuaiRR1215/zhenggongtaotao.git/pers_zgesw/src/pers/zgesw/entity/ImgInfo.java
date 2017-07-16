package pers.zgesw.entity;

public class ImgInfo {
	private Integer iid;// 图片id
	private String url;// 图片保存路径
	private SellInfo sellInfo;// 图片所属的售卖信息

	public ImgInfo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getIid() {
		return iid;
	}

	public void setIid(Integer iid) {
		this.iid = iid;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public SellInfo getSellInfo() {
		return sellInfo;
	}

	public void setSellInfo(SellInfo sellInfo) {
		this.sellInfo = sellInfo;
	}

	@Override
	public String toString() {
		return "ImgInfo [iid=" + iid + ", url=" + url + ", sellInfo=" + sellInfo + "]";
	}

}
