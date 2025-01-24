package com.entity.view;

import com.entity.AuctionxianzhiwupinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 闲置物品竞拍记录表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2023-03-08 18:08:45
 */
@TableName("auctionxianzhiwupin")
public class AuctionxianzhiwupinView  extends AuctionxianzhiwupinEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public AuctionxianzhiwupinView(){
	}
 
 	public AuctionxianzhiwupinView(AuctionxianzhiwupinEntity auctionxianzhiwupinEntity){
 	try {
			BeanUtils.copyProperties(this, auctionxianzhiwupinEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
