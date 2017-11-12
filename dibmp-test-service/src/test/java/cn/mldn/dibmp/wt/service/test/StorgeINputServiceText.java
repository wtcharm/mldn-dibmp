package cn.mldn.dibmp.wt.service.test;

import java.util.Map;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import cn.mldn.dibmp.wt.service.IStorgeInputService;

@ContextConfiguration(locations = {"classpath:spring/spring-*.xml"})
@RunWith(SpringJUnit4ClassRunner.class)
public class StorgeINputServiceText {
	@Resource
	private IStorgeInputService inputService;
	@Test
	public void listInputBckeText() {
		 Map<String, Object> map = inputService.listInputBcke(2L,"1");
		 if(map.isEmpty()) {
			 System.err.println("查询的仓库数据 --" + map.get("applyAll"));
			 System.err.println("查询的商品数据 --" + map.get("details"));
		 }else {
			 System.err.println("查询的仓库数据 aaa--" + map.get("applyAll"));
			 System.err.println("查询的商品数据 aaa--" + map.get("details"));
		 }
	}
	@Test
	public void listOutputDistributionText() {
		 Map<String, Object> map = this.inputService.listOutputDistribution(47L);
		 System.err.println("当前省份信息----" + map.get("allProvince"));
		 System.err.println("当前城市信息----" + map.get("allCity"));
		 System.err.println("当前出库申请信息----" + map.get("allOutput"));
		 System.err.println("当前出出库申请的商品----" + map.get("allOutputShop"));
	}
	
	
}
