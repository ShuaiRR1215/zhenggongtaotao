package pers.zgesw.dao;

import java.util.List;

import pers.zgesw.entity.SellInfo;

/**
 * @author shuai
 * @E_mail 1225803134@qq.com
 * @date 2017年7月17日
 * @description
 */
public interface SellInfoDao {

	public List<SellInfo> findAllWithPage(int begin, int limit);

	public int findAllSellInfoCounts();

	public SellInfo findSellInfoBySid(Integer sid);

	public int findSellInfoCountsByCid(Integer cid);

	public List<SellInfo> findSellInfosByCid(int begin, int limit, int cid);

	public int findSellInfoCountsByCsid(Integer csid);

	public List<SellInfo> findSellInfosByCsid(Integer csid, int begin, int limit);

	public void deleteBySid(SellInfo sellInfo);


}
