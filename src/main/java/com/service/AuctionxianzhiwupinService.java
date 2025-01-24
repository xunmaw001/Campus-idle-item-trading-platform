package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.AuctionxianzhiwupinEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.AuctionxianzhiwupinVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.AuctionxianzhiwupinView;


/**
 * 闲置物品竞拍记录表
 *
 * @author 
 * @email 
 * @date 2023-03-08 18:08:45
 */
public interface AuctionxianzhiwupinService extends IService<AuctionxianzhiwupinEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<AuctionxianzhiwupinVO> selectListVO(Wrapper<AuctionxianzhiwupinEntity> wrapper);
   	
   	AuctionxianzhiwupinVO selectVO(@Param("ew") Wrapper<AuctionxianzhiwupinEntity> wrapper);
   	
   	List<AuctionxianzhiwupinView> selectListView(Wrapper<AuctionxianzhiwupinEntity> wrapper);
   	
   	AuctionxianzhiwupinView selectView(@Param("ew") Wrapper<AuctionxianzhiwupinEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<AuctionxianzhiwupinEntity> wrapper);
   	

}

