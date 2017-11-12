package cn.mldn.dibmp.dao;

import java.util.List;

import cn.mldn.dibmp.vo.DistributionDetails;

public interface IDistributionDetailsDAO {
	public List<DistributionDetails> findByDsid(Long dsid);
}
