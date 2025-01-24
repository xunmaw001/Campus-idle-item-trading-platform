package com.dao;

import com.entity.AuctionxianzhiwupinEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.AuctionxianzhiwupinVO;
import com.entity.view.AuctionxianzhiwupinView;


/**
 * 闲置物品竞拍记录表
 * 
 * @author 
 * @email 
 * @date 2023-03-08 18:08:45
 */
public interface AuctionxianzhiwupinDao extends BaseMapper<AuctionxianzhiwupinEntity> {
	
	List<AuctionxianzhiwupinVO> selectListVO(@Param("ew") Wrapper<AuctionxianzhiwupinEntity> wrapper);
	
	AuctionxianzhiwupinVO selectVO(@Param("ew") Wrapper<AuctionxianzhiwupinEntity> wrapper);
	
	List<AuctionxianzhiwupinView> selectListView(@Param("ew") Wrapper<AuctionxianzhiwupinEntity> wrapper);

	List<AuctionxianzhiwupinView> selectListView(Pagination page,@Param("ew") Wrapper<AuctionxianzhiwupinEntity> wrapper);
	
	AuctionxianzhiwupinView selectView(@Param("ew") Wrapper<AuctionxianzhiwupinEntity> wrapper);
	

}
