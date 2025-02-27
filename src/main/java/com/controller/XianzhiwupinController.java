package com.controller;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.XianzhiwupinEntity;
import com.entity.view.XianzhiwupinView;

import com.service.XianzhiwupinService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import com.service.StoreupService;
import com.entity.StoreupEntity;

/**
 * 闲置物品
 * 后端接口
 * @author 
 * @email 
 * @date 2023-03-08 18:08:45
 */
@RestController
@RequestMapping("/xianzhiwupin")
public class XianzhiwupinController {
    @Autowired
    private XianzhiwupinService xianzhiwupinService;


    @Autowired
    private StoreupService storeupService;

    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,XianzhiwupinEntity xianzhiwupin, 
                @RequestParam(required = false) Double pricestart,
                @RequestParam(required = false) Double priceend,
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			xianzhiwupin.setZhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<XianzhiwupinEntity> ew = new EntityWrapper<XianzhiwupinEntity>();
                if(pricestart!=null) ew.ge("price", pricestart);
                if(priceend!=null) ew.le("price", priceend);

    	PageUtils page = xianzhiwupinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xianzhiwupin), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,XianzhiwupinEntity xianzhiwupin, 
                @RequestParam(required = false) Double pricestart,
                @RequestParam(required = false) Double priceend,
		HttpServletRequest request){
        EntityWrapper<XianzhiwupinEntity> ew = new EntityWrapper<XianzhiwupinEntity>();
                if(pricestart!=null) ew.ge("price", pricestart);
                if(priceend!=null) ew.le("price", priceend);

    	PageUtils page = xianzhiwupinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xianzhiwupin), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( XianzhiwupinEntity xianzhiwupin){
       	EntityWrapper<XianzhiwupinEntity> ew = new EntityWrapper<XianzhiwupinEntity>();
      	ew.allEq(MPUtil.allEQMapPre( xianzhiwupin, "xianzhiwupin")); 
        return R.ok().put("data", xianzhiwupinService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(XianzhiwupinEntity xianzhiwupin){
        EntityWrapper< XianzhiwupinEntity> ew = new EntityWrapper< XianzhiwupinEntity>();
 		ew.allEq(MPUtil.allEQMapPre( xianzhiwupin, "xianzhiwupin")); 
		XianzhiwupinView xianzhiwupinView =  xianzhiwupinService.selectView(ew);
		return R.ok("查询闲置物品成功").put("data", xianzhiwupinView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        XianzhiwupinEntity xianzhiwupin = xianzhiwupinService.selectById(id);
		xianzhiwupin.setClicknum(xianzhiwupin.getClicknum()+1);
		xianzhiwupin.setClicktime(new Date());
		xianzhiwupinService.updateById(xianzhiwupin);
        return R.ok().put("data", xianzhiwupin);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        XianzhiwupinEntity xianzhiwupin = xianzhiwupinService.selectById(id);
		xianzhiwupin.setClicknum(xianzhiwupin.getClicknum()+1);
		xianzhiwupin.setClicktime(new Date());
		xianzhiwupinService.updateById(xianzhiwupin);
        return R.ok().put("data", xianzhiwupin);
    }
    


    /**
     * 赞或踩
     */
    @RequestMapping("/thumbsup/{id}")
    public R vote(@PathVariable("id") String id,String type){
        XianzhiwupinEntity xianzhiwupin = xianzhiwupinService.selectById(id);
        if(type.equals("1")) {
        	xianzhiwupin.setThumbsupnum(xianzhiwupin.getThumbsupnum()+1);
        } else {
        	xianzhiwupin.setCrazilynum(xianzhiwupin.getCrazilynum()+1);
        }
        xianzhiwupinService.updateById(xianzhiwupin);
        return R.ok("投票成功");
    }

    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody XianzhiwupinEntity xianzhiwupin, HttpServletRequest request){
    	xianzhiwupin.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xianzhiwupin);

        xianzhiwupinService.insert(xianzhiwupin);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody XianzhiwupinEntity xianzhiwupin, HttpServletRequest request){
    	xianzhiwupin.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(xianzhiwupin);

        xianzhiwupinService.insert(xianzhiwupin);
        return R.ok();
    }


    /**
     * 修改
     */
    @RequestMapping("/update")
    @Transactional
    public R update(@RequestBody XianzhiwupinEntity xianzhiwupin, HttpServletRequest request){
        //ValidatorUtils.validateEntity(xianzhiwupin);
        xianzhiwupinService.updateById(xianzhiwupin);//全部更新
        return R.ok();
    }

    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        xianzhiwupinService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<XianzhiwupinEntity> wrapper = new EntityWrapper<XianzhiwupinEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("yonghu")) {
			wrapper.eq("zhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = xianzhiwupinService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	
	/**
     * 前端智能排序
     */
	@IgnoreAuth
    @RequestMapping("/autoSort")
    public R autoSort(@RequestParam Map<String, Object> params,XianzhiwupinEntity xianzhiwupin, HttpServletRequest request,String pre){
        EntityWrapper<XianzhiwupinEntity> ew = new EntityWrapper<XianzhiwupinEntity>();
        Map<String, Object> newMap = new HashMap<String, Object>();
        Map<String, Object> param = new HashMap<String, Object>();
		Iterator<Map.Entry<String, Object>> it = param.entrySet().iterator();
		while (it.hasNext()) {
			Map.Entry<String, Object> entry = it.next();
			String key = entry.getKey();
			String newKey = entry.getKey();
			if (pre.endsWith(".")) {
				newMap.put(pre + newKey, entry.getValue());
			} else if (StringUtils.isEmpty(pre)) {
				newMap.put(newKey, entry.getValue());
			} else {
				newMap.put(pre + "." + newKey, entry.getValue());
			}
		}
		params.put("sort", "clicknum");
        params.put("order", "desc");
		PageUtils page = xianzhiwupinService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, xianzhiwupin), params), params));
        return R.ok().put("data", page);
    }








}
