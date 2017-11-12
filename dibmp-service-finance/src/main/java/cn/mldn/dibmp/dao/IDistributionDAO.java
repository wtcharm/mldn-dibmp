package cn.mldn.dibmp.dao;

import java.util.Map;

import cn.mldn.dibmp.vo.City;
import cn.mldn.dibmp.vo.Distribution;
import cn.mldn.dibmp.vo.Province;

public interface IDistributionDAO {
	public Distribution findByDsid(Long dsid);
	public Province findByPid(Long pid);
	//Long cid,Long pid
	public City findProvinceAndCit(Map<String, Object> map);
}
