package cn.mldn.dibmp.wt.service;
/**
 * 负责实现商品入库处理
 * @author Administrator
 *
 */

import java.util.Map;

public interface IStorgeInputService {

	/**
	 * 根据said 查询当前编号对应的仓库的信息
	 * @param said 仓库编号
	 * @return
	 */
	public Map<String, Object> listInputBcke(Long said,String status);
	/**
	 * 根据 仓库编号（said） 判断仓库是都存在
	 * @param said  仓库编号  //dsid
	 * @return 存在返回true的否则返回 false
	 */
	public boolean isSaidVo(Long said,String status);
	/**
	 * 根据出库请求查询出所有的出库信息
	 * @param dsid 当前出库编号
	 * @return 返回值如下：
	 * 1.key= "allProvince" value="当前省份信息"(单个对象)
	 * 2.key="allCity" value="当前城市信息"(单个对象)
	 * 3.key="allOutput" value="当前出库申请信息"(单个对象)
	 * 4.key="allOutputShop" value="当前出出库申请的商品"
	 */
	public Map<String, Object> listOutputDistribution(Long dsid);
	public boolean  isOutputDistribution(Long dsid);
}
