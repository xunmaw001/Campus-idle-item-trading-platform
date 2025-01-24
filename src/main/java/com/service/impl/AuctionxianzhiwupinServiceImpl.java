package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.AuctionxianzhiwupinDao;
import com.entity.AuctionxianzhiwupinEntity;
import com.service.AuctionxianzhiwupinService;
import com.entity.vo.AuctionxianzhiwupinVO;
import com.entity.view.AuctionxianzhiwupinView;

@Service("auctionxianzhiwupinService")
public class AuctionxianzhiwupinServiceImpl extends ServiceImpl<AuctionxianzhiwupinDao, AuctionxianzhiwupinEntity> implements AuctionxianzhiwupinService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<AuctionxianzhiwupinEntity> page = this.selectPage(
                new Query<AuctionxianzhiwupinEntity>(params).getPage(),
                new EntityWrapper<AuctionxianzhiwupinEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<AuctionxianzhiwupinEntity> wrapper) {
		  Page<AuctionxianzhiwupinView> page =new Query<AuctionxianzhiwupinView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<AuctionxianzhiwupinVO> selectListVO(Wrapper<AuctionxianzhiwupinEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public AuctionxianzhiwupinVO selectVO(Wrapper<AuctionxianzhiwupinEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<AuctionxianzhiwupinView> selectListView(Wrapper<AuctionxianzhiwupinEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public AuctionxianzhiwupinView selectView(Wrapper<AuctionxianzhiwupinEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
