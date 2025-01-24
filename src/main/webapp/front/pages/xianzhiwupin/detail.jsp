<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 首页 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>首页</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		#swiper .layui-carousel-arrow[lay-type=sub] {
						background: rgba(0,0,0,.2);
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=sub]:hover {
						background: #e6a4b4;
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=add] {
						background: rgba(0,0,0,.2);
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-arrow[lay-type=add]:hover {
						background: #e6a4b4;
						width: 36px;
						font-size: 20px;
						height: 36px;
					}
		
		#swiper .layui-carousel-ind {
						top: -35px;
						width: 100%;
						position: relative;
					}
		
		#swiper .layui-carousel-ind ul {
						border-radius: 10px;
						padding: 5px;
						background: rgba(0,0,0,.2);
						display: inline-block;
					}
		
		#swiper .layui-carousel-ind ul li {
						cursor: pointer;
						border-radius: 100%;
						margin: 0 3px;
						background: rgba(255,255,255,.5);
						display: inline-block;
						width: 12px;
						font-size: 14px;
						height: 12px;
					}
		
		#swiper .layui-carousel-ind ul li:hover {
						cursor: pointer;
						border-radius: 100%;
						margin: 0 3px;
						background: rgba(255,255,255,.7);
						display: inline-block;
						width: 12px;
						font-size: 14px;
						height: 12px;
					}
		
		#swiper .layui-carousel-ind ul li.layui-this {
						cursor: pointer;
						border-radius: 100%;
						margin: 0 3px;
						background: rgba(255,255,255,1);
						display: inline-block;
						width: 12px;
						font-size: 14px;
						height: 12px;
					}
		
		.layui-tab-card .layui-tab-title li {
						cursor: pointer;
						padding: 0 20px;
						margin: 0px 10px 10px 0;
						color: #333;
						font-size: 14px;
						border-color: #a8c4d9;
						line-height: 44px;
						border-radius: 10px;
						box-shadow: inset 0px 0px 0px 0px #b6d7de;
						background: linear-gradient(30deg, rgba(255,255,255,1) 0%, rgba(207,193,176,1) 20%, rgba(166,147,124,1) 50%, rgba(207,193,176,1) 80%, rgba(255,255,255,1) 100%),#a6937c;
						width: auto;
						border-width: 0px 0px ;
						border-style: solid;
						text-align: center;
						min-width: 110px;
						height: 44px;
					}
		
		.layui-tab-card .layui-tab-title li:hover {
						cursor: pointer;
						padding: 0 20px;
						margin: 0px 10px 10px 0;
						color: #fff;
						font-size: 16px;
						border-color: #40a8c4;
						line-height: 44px;
						border-radius: 10px;
						background: linear-gradient(140deg, rgba(255,255,255,1) 0%, rgba(207,193,176,1) 20%, rgba(166,147,124,1) 50%, rgba(207,193,176,1) 80%, rgba(255,255,255,1) 100%),#a6937c;
						width: auto;
						border-width: 0px 0px;
						border-style: solid;
						text-align: center;
					}
		
		.layui-tab-card .layui-tab-title li.layui-this {
						cursor: pointer;
						padding: 0 20px;
						margin: 0px 10px 10px 0;
						color: #fff;
						font-size: 16px;
						border-color: #40a8c4;
						line-height: 44px;
						border-radius: 10px;
						box-shadow: inset 0px 0px 0px 0px #40a8c4;
						background: linear-gradient(140deg, rgba(255,255,255,1) 0%, rgba(207,193,176,1) 20%, rgba(166,147,124,1) 50%, rgba(207,193,176,1) 80%, rgba(255,255,255,1) 100%),#a6937c;
						width: auto;
						border-width: 0px 0px;
						border-style: solid;
						text-align: center;
						min-width: 110px;
						height: 44px;
					}
		
		.layui-tab-card .layui-tab-title li.layui-this::after {
			content: none;
		}
	</style>
	<body>
		<div id="app">
			<div id="layui-carousel" class="layui-carousel">
                <div carousel-item>
                    <div class="layui-carousel-item" v-for="(item,index) in swiperList2" :key="index">
                        <img :src="item.img" />
                    </div>
                </div>	
			</div>
		
			<div id="breadcrumb">
				<a class="en" href="../home/home.jsp">首页</a>
				<!-- <span class="en">DETAIL / INFORMATION</span> -->
				<span class="cn">{{title}}</span>
			</div>
			
			<div class="data-detail" :style='{"padding":"0px 0 40px","margin":"0px auto 0","alignItems":"flex-start","flexWrap":"wrap","background":"none","display":"flex","width":"100%","position":"relative","justifyContent":"space-between"}'>
				<div :style='{"padding":"0","boxShadow":"0px 0px 0px #eee","borderColor":"#ddd","display":"flex","justifyContent":"space-between","minHeight":"680px","overflow":"hidden","borderRadius":"0px","flexWrap":"wrap","background":"none","borderWidth":"0px","width":"100%","position":"relative","borderStyle":"solid"}'>
					
					<div class="layui-carousel" id="swiper" :style='{"border":"0px solid #bdefb6","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","padding":"60px 50px","margin":"40px 0 0 7%","borderColor":"#bcdbdf","borderRadius":"0px","background":"url(http://codegen.caihongy.cn/20230207/346e413dce8f4515a5a57219df032ccd.png) no-repeat left top / auto 100%,url(http://codegen.caihongy.cn/20230207/e75d04594fa6401b9993f023e829f7b8.png) no-repeat right bottom / auto 100%","borderWidth":"0px","width":"38%","borderStyle":"outset","order":"1","height":"600px"}'>
						<div carousel-item>
							<div :style='{"borderRadius":"0px","width":"100%","height":"100%"}' v-if="swiperList.length" v-for="(item,index) in swiperList" :key="index">
								<img :style='{"width":"100%","objectFit":"cover","borderRadius":"0px","height":"100%"}' :src="baseurl+item" />
							</div>
						</div>
					</div>


					<div :style='{"border":"0","padding":"0px 0 0","margin":"40px 7% 0 0","alignItems":"flex-end","display":"flex","justifyContent":"center","top":"580px","flexWrap":"wrap","left":"7%","background":"none","width":"38%","position":"absolute","order":"3","height":"auto"}' class="tool-container">
						<div :style='{"cursor":"pointer","padding":"10px 0 10px","margin":"0 4% 20px","borderColor":"#e5b383","alignItems":"flex-end","display":"flex","minWidth":"100px","justifyContent":"center","borderRadius":"30px","background":"none","borderWidth":"0px","width":"38%","borderStyle":"dashed","height":"44px"}' v-if='!thumbsupFlag&&!crazilyFlag' @click="thumbsupnumClick()">
							<i :style='{"color":"#333","margin":"0 3px","fontSize":"16px"}' class="layui-icon">&#xe6c6;</i>
							<span :style='{"color":"#333","margin":"0 3px","fontSize":"16px"}'>赞一下({{detail.thumbsupnum}})</span>
						</div>
						<div :style='{"cursor":"pointer","padding":"10px 0 10px","margin":"0 4% 20px","borderColor":"#e5b383","alignItems":"flex-end","display":"flex","minWidth":"100px","justifyContent":"center","borderRadius":"30px","background":"none","borderWidth":"0px","width":"38%","borderStyle":"dashed","height":"44px"}' v-if='thumbsupFlag' @click="thumbsupnumClick()">
							<i :style='{"color":"#333","margin":"0 3px","fontSize":"16px"}' class="layui-icon">&#xe6c6;</i>
							<span :style='{"color":"#333","margin":"0 3px","fontSize":"16px"}'>取消赞({{detail.thumbsupnum}})</span>
						</div>
						<div :style='{"cursor":"pointer","padding":"10px 0 10px","margin":"0 4% 20px","borderColor":"#e5b383","alignItems":"flex-end","display":"flex","minWidth":"100px","justifyContent":"center","borderRadius":"30px","background":"none","borderWidth":"0px","width":"38%","borderStyle":"dashed","height":"44px"}' v-if='!thumbsupFlag&&!crazilyFlag' @click="crazilynumClick()">
							<i :style='{"color":"#333","margin":"0 3px","fontSize":"16px"}' class="layui-icon">&#xe6c5;</i>
							<span :style='{"color":"#333","margin":"0 3px","fontSize":"16px"}'>踩一下({{detail.crazilynum}})</span>
						</div>
						<div :style='{"cursor":"pointer","padding":"10px 0 10px","margin":"0 4% 20px","borderColor":"#e5b383","alignItems":"flex-end","display":"flex","minWidth":"100px","justifyContent":"center","borderRadius":"30px","background":"none","borderWidth":"0px","width":"38%","borderStyle":"dashed","height":"44px"}' v-if='crazilyFlag' @click="crazilynumClick()">
							<i :style='{"color":"#333","margin":"0 3px","fontSize":"16px"}' class="layui-icon">&#xe6c5;</i>
							<span :style='{"color":"#333","margin":"0 3px","fontSize":"16px"}'>取消踩({{detail.crazilynum}})</span>
						</div>
					</div>


					<div :style='{"minHeight":"500px","padding":"0px 0px 20px","margin":"40px 7% 0px 0","borderRadius":"20px","background":"none","width":"41%","order":"2"}'>
						<div :style='{"padding":"4px 20px 16px","boxShadow":"inset 0px 0px 0px 0px #f5e7ea","margin":"0 0 10px 0","borderColor":"#7e6b5a","alignItems":"center","display":"flex","justifyContent":"space-between","outline":"1px solid #7e6b5a","borderRadius":"0px","outlineOffset":"2px","background":"url(http://codegen.caihongy.cn/20230207/cb0df322e9b14cb3b11556207d9fab2b.png) no-repeat 20px -1px,#f6f5f3","borderWidth":"1px 0","borderStyle":"dashed"}'>
							<div :style='{"padding":"8px 20px 0 80px","fontSize":"16px","color":"#333","fontWeight":"500"}'>{{title}}</div>
							<div v-if='storeupFlag' :style='{"cursor":"pointer","padding":"12px 10px 2px","borderRadius":"20px","background":"none"}' @click="storeUp()">
								<i class="layui-icon" :style='{"color":"#936837","fontSize":"16px"}'>&#xe67a;</i>
								<span :style='{"color":"#936837","fontSize":"15px"}'>取消收藏</span>
							</div>
							<div v-if='!storeupFlag' :style='{"cursor":"pointer","padding":"12px 10px 2px","borderRadius":"20px","background":"none"}' @click="storeUp()">
								<i class="layui-icon" :style='{"color":"#936837","fontSize":"16px"}'>&#xe67b;</i>
								<span :style='{"color":"#936837","fontSize":"15px"}'>点我收藏</span>
							</div>
						</div>

						<div class="detail-item" :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#eee","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}'>
							<div v-if="count > 0" :style='{"padding":"0 10px","color":"#936837","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}' class="text">正在竞拍：</div>
							<div v-if="count > 0" :style='{"width":"100%","padding":"0px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="count">距离结束还有：{{SecondToDate}}</div>
							<div v-if="count <= 0" :style='{"padding":"0 10px","color":"#936837","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}' class="text">竞拍结束：</div>
							<div v-if="count <= 0" :style='{"width":"100%","padding":"0px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="count">{{detail.reversetime}}竞拍结束</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#eee","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' v-if="detail.price" class="detail-item">
							<div :style='{"padding":"0 10px","color":"#936837","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>价格：</div>
							<div :style='{"width":"100%","padding":"0px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}'>￥{{Number(detail.price).toFixed(2)}}</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#eee","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' v-if="detail.jf" class="detail-item">
							<div :style='{"padding":"0 10px","color":"#936837","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>积分：</div>
							<div :style='{"width":"100%","padding":"0px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}'>
								{{detail.jf}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#eee","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' v-if="detail.onelimittimes" class="detail-item">
							<div :style='{"padding":"0 10px","color":"#936837","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>单次购买：</div>
							<div :style='{"width":"100%","padding":"0px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.onelimittimes}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#eee","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' v-if="detail.alllimittimes" class="detail-item">
							<div :style='{"padding":"0 10px","color":"#936837","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>库存：</div>
							<div :style='{"width":"100%","padding":"0px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.alllimittimes}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#eee","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' v-if="detail.price" class="detail-item">
							<div :style='{"padding":"0 10px","color":"#936837","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>起拍价：</div>
							<div :style='{"width":"100%","padding":"0px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}'>￥{{Number(detail.startprice).toFixed(2)}}</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#eee","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' v-if="detail.price" class="detail-item">
							<div :style='{"padding":"0 10px","color":"#936837","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>加价幅度：</div>
							<div :style='{"width":"100%","padding":"0px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}'>￥{{Number(detail.stepprice).toFixed(2)}}</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#eee","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' v-if="detail.price" class="detail-item">
							<div :style='{"padding":"0 10px","color":"#936837","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>一口价：</div>
							<div :style='{"width":"100%","padding":"0px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}'>￥{{Number(detail.endprice).toFixed(2)}}</div>
						</div>


						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#eee","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#936837","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>商品类型：</div>
							<div  :style='{"width":"100%","padding":"0px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.shangpinleixing}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#eee","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#936837","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>品牌：</div>
							<div  :style='{"width":"100%","padding":"0px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.pinpai}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#eee","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#936837","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>规格：</div>
							<div  :style='{"width":"100%","padding":"0px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.guige}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#eee","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#936837","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>账号：</div>
							<div  :style='{"width":"100%","padding":"0px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.zhanghao}}
							</div>
						</div>
						<div :style='{"padding":"0px","boxShadow":"inset 0px 0px 0px 0px #f5eee6","margin":"0 20px 10px","borderColor":"#eee","background":"none","borderWidth":"0px 0px 1px","display":"flex","borderStyle":"dashed","justifyContent":"spaceBetween"}' class="detail-item">
							<div :style='{"padding":"0 10px","color":"#936837","textAlign":"right","background":"none","width":"auto","fontSize":"14px","lineHeight":"40px","minWidth":"120px","height":"40px"}'>点击次数：</div>
							<div  :style='{"width":"100%","padding":"0px 10px 0","fontSize":"14px","lineHeight":"24px","color":"#666","background":"none"}' class="desc">
								{{detail.clicknum}}
							</div>
						</div>


						<div class="detail-item" :style='{"padding":"10px 20px","flexWrap":"wrap","background":"none","display":"flex"}'>

							<button v-if="auctionBuyFlag && count <= 0" :style='{"border":"0px solid #b5f0f0","cursor":"pointer","padding":"0 10px","margin":"0 5px 0px 0","outline":"none","color":"#333","borderRadius":"20px","background":"#d9c0a7","width":"auto","lineHeight":"40px","fontSize":"14px","height":"40px"}' @click="buyTap" type="button" class="layui-btn btn-submit">
							    竞拍成功,立即付款	
							</button>


							<button v-if="!auctionBuyFlag && count<=0" :style='{"border":"0px solid #b5f0f0","cursor":"pointer","padding":"0 10px","margin":"0 5px 0px 0","outline":"none","color":"#333","borderRadius":"20px","background":"#d9c0a7","width":"auto","lineHeight":"40px","fontSize":"14px","height":"40px"}' type="button" class="layui-btn btn-submit">
								{{detail.reversetime}}竞拍结束
							</button>
							<button v-if="count>0" :style='{"border":"0px solid #b5f0f0","cursor":"pointer","padding":"0 10px","margin":"0 5px 0px 0","outline":"none","color":"#333","borderRadius":"20px","background":"#d9c0a7","width":"auto","lineHeight":"40px","fontSize":"14px","height":"40px"}' @click="goOffer" type="button" class="layui-btn btn-submit">
								出个价
							</button>
						</div>
					</div>
					
				</div>
				



				<div class="layui-tab layui-tab-card" :style='{"border":"0","padding":"0","boxShadow":"none","margin":"60px 7% 0 7%","borderColor":"#bcdbdf","float":"right","minHeight":"440px","overflow":"hidden","borderRadius":"0 20px 20px 0","background":"#fff","borderWidth":"0px","flex":"1","width":"50%","borderStyle":"outset","order":"10"}'>
					<ul class="layui-tab-title" :style='{"border":"0","padding":"20px 0px 40px","fontSize":"0","textAlign":"center","background":"#fff","height":"51px"}'>

						<li class="layui-this">商品介绍</li>


						<li>出价记录</li>

						<li>评论</li>







					</ul>
					<div :style='{"padding":"15px","background":"#fff"}' class="layui-tab-content">

						<div class="layui-tab-item layui-show">
							<div v-html="detail.shangpinjieshao"></div>
						</div>


                        <div class="layui-tab-item ">
                            <table class="layui-table">
                              <colgroup>
                                <col width="80">
                                <col>
                                <col>
                                <col>
                                <col>
                              </colgroup>
                              <thead>
                                <tr>
                                  <th style="text-align: center;">头像</th>
                                  <th style="text-align: center;">用户名</th>
                                  <th style="text-align: center;">出价</th>
                                  <th style="text-align: center;">状态</th>
                                  <th style="text-align: center;">出价时间</th>
                                </tr> 
                              </thead>
                              <tbody>
                                <tr v-for="(item,index) in auctionRecordList" :key="index">
                                  <td style="text-align: center;"><img :src="baseurl + item.avatarurl" style="width: 40px;height: 40px;border-radius: 50%;"></td>
                                  <td style="text-align: center;">{{item.nickname}}</td>
                                  <td style="text-align: center;">￥{{item.auctionprice}}</td>
                                  <td style="text-align: center;">
                                      <div v-if="item.auctionstatus=='领先'" style="color: #FF0000;border: 1px solid #ff0000;padding: 4px 6px;font-weight: bold;display: inline-block;">{{item.auctionstatus}}</div>
                                      <div v-if="item.auctionstatus=='出局'" style="color: #999;border: 1px solid #999;padding: 4px 6px;font-weight: bold;display: inline-block;">{{item.auctionstatus}}</div>
                                    </td>
                                  <td style="text-align: center;">{{item.addtime}}</td>
                                </tr>
                                
                              </tbody>
                            </table>
                        </div>


						<div class="layui-tab-item" >
							<form class="layui-form message-form" :style='{"boxShadow":"0 0px 0px 0 rgba(0, 0, 0, .1)","padding":"15px","margin":"0 0 20px","borderColor":"#fff","borderWidth":"0px","background":"none","width":"100%","borderStyle":"dotted"}'>
								<div :style='{"width":"100%","background":"none","display":"flex","height":"auto"}' class="layui-form-item layui-form-text">
									<label :style='{"width":"80px","padding":"0 10px 0 0","lineHeight":"40px","fontSize":"14px","color":"#666","textAlign":"right"}' class="layui-form-label">评论</label>
									<textarea :style='{"border":"0","padding":"15px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","borderColor":"#ddd","color":"#333","minHeight":"150px","outline":"none","borderRadius":"12px","borderWidth":"1px","width":"1058px","lineHeight":"32px","fontSize":"14px","borderStyle":"solid"}' name="content" required lay-verify="required" placeholder="请输入内容" class="layui-textarea"></textarea>
								</div>
								<div :style='{"width":"100%","padding":"0 0 0 80px","margin":"30px 0 0","textAlign":"center","height":"auto"}' class="layui-form-item">
									<button :style='{"cursor":"pointer","padding":"0","margin":"0 20px 0 0","borderColor":"#cbbd9a","color":"#937937","outline":"none","borderRadius":"30px","background":"linear-gradient(30deg, rgba(255,255,255,1) 0%, rgba(207,193,176,1) 20%, rgba(246,236,223,1) 50%, rgba(207,193,176,1) 80%, rgba(255,255,255,1) 100%)","borderWidth":"1px 0","width":"120px","lineHeight":"40px","fontSize":"14px","borderStyle":"solid","height":"40px"}' class="layui-btn btn-submit" lay-submit lay-filter="*">立即提交</button>
									<button :style='{"cursor":"pointer","padding":"0","margin":"0 20px 0 0","borderColor":"#ddd","color":"#888","outline":"none","borderRadius":"30px","background":"linear-gradient(30deg, rgba(255,255,255,1) 0%, rgba(200,200,200,1) 20%, rgba(240,240,240,1) 50%, rgba(200,200,200,1) 80%, rgba(255,255,255,1) 100%)","borderWidth":"1px 0","width":"120px","lineHeight":"40px","fontSize":"14px","borderStyle":"solid","height":"40px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
								</div>
							</form>
							
							<div class="message-list" :style='{"boxShadow":"0 0px 0px 0 rgba(0, 0, 0, .1)","padding":"15px","borderColor":"#fff","borderRadius":"12px","borderWidth":"0px","background":"#f6f5f3","width":"100%","borderStyle":"groove"}'>
								<div :style='{"padding":"10px","boxShadow":"inset 0px 0px 0px 0px #c5f1c0","margin":"0 0 20px","borderColor":"#eee","alignItems":"center","borderWidth":"0px","background":"none","width":"100%","borderStyle":"solid","height":"auto"}' class="message-item" v-for="(item,index) in dataList" v-bind:key="index">
									<div :style='{"padding":"6px 0","borderColor":"#fff","alignItems":"center","borderWidth":"0 0 0px","display":"flex","width":"100%","borderStyle":"solid","height":"auto"}' class="username-container">
										<img :style='{"width":"40px","margin":"0 10px 0 0","borderRadius":"100%","objectFit":"cover","height":"40px"}' class="avator" :src="baseurl + item.avatarurl">
										<div :style='{"color":"#333","fontSize":"16px"}' class="username">{{item.nickname}}</div>
									</div>
									<div :style='{"padding":"10px","margin":"10px 0px 0px","borderColor":"#c7eec2","color":"#333","borderRadius":"8px","background":"#fff","borderWidth":"0px","lineHeight":"24px","fontSize":"14px","borderStyle":"solid","textIndent":"2em"}'>
										{{item.content}}
									</div>
									<div :style='{"padding":"10px","margin":"10px 0px 0px","borderColor":"#c7eec2","color":"#333","borderRadius":"8px","background":"#fff","borderWidth":"0px","lineHeight":"24px","fontSize":"14px","borderStyle":"solid","textIndent":"2em"}' v-if="item.reply" class="content">
										回复:{{item.reply}}
									</div>
								</div>
							</div>
							<div class="pager" id="pager"></div>
						</div>







					</div>
				</div>
			</div>
            <div class="showBox" v-if="auctionShowType">
                <div style="position: fixed;width: 100vw;height: 100vh;top: 0;left: 0;background: rgba(0,0,0,.3);z-index: 998;" @click="auctionShowType=false"></div>
                <div style="background: #fff;position: fixed;width: 20%;position: fixed;top: 50%;margin-top: -50px;left: 40%;z-index: 999;border-radius: 6px;padding: 10px 30px;">
                    <div style="width: 100%;font-size: 18px;color: #000;font-weight: bold;padding: 10px 24px;box-sizing: border-box;">出个价</div>
                    <div style="width: 100%;display: flex;align-items: center;padding: 10px 20px;box-sizing: border-box;">
                        <div style="width: 30%;">当前价格</div>
                        <div>￥{{detail.price}}</div>
                    </div>
                    <div style="width: 100%;display: flex;align-items: center;padding: 10px 20px;box-sizing: border-box;">
                        <div style="width: 30%;">我的出价</div>
                        <div>￥<input type="number" v-model="offerPrice" :min="detail.price" :max="detail.endprice"></div>
                    </div>
                    <div style="width: 100%;display: flex;align-items: center;padding: 10px 20px;box-sizing: border-box;">
                        <button
                            :style='{"border":"0","cursor":"pointer","padding":"0 10px","margin":"0 5px 0 0","outline":"none","color":"#fff","borderRadius":"4px","background":"rgba(64, 158, 255, 1)","width":"auto","lineHeight":"40px","fontSize":"14px","height":"40px"}'
                            @click="auctionOffer" type="button" class="layui-btn btn-submit">
                            确定
                        </button>
                    </div>
                </div>
            </div>
		</div>

		<script src="../../layui/layui.js"></script>
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
                    swiperList2: [{
                        img: '../../img/banner.jpg'
                    }],
					swiperList: [],
					// 数据详情
					detail: {
						id: 0
					},
					// 商品标题
					title: '',
					// 倒计时
					count: 0,
					// 加入购物车数量
					buynumber: 1,
					// 当前详情页表
					detailTable: 'xianzhiwupin',
					baseurl: '',
					// 评论列表
					dataList: [],
					storeupFlag: 0,
					thumbsupFlag: 0,
					crazilyFlag: 0,
                    auctionShowType:false,
                    offerPrice:'',
                    auctionRecordList:[],
                    auctionBuyFlag : false,
					// 选座座位列表
					numberList: []
				},
				// 倒计时效果
				computed: {
					SecondToDate: function() {
						var time = this.count;
						if (null != time && "" != time) {
							if (time > 60 && time < 60 * 60) {
								time =
									parseInt(time / 60.0) +
									"分钟" +
									parseInt((parseFloat(time / 60.0) - parseInt(time / 60.0)) * 60) +
									"秒";
							} else if (time >= 60 * 60 && time < 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else if (time >= 60 * 60 * 24) {
								time =
									parseInt(time / 3600.0 / 24) +
									"天" +
									parseInt(
										(parseFloat(time / 3600.0 / 24) - parseInt(time / 3600.0 / 24)) *
										24
									) +
									"小时" +
									parseInt(
										(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
									) +
									"分钟" +
									parseInt(
										(parseFloat(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											) -
											parseInt(
												(parseFloat(time / 3600.0) - parseInt(time / 3600.0)) * 60
											)) *
										60
									) +
									"秒";
							} else {
								time = parseInt(time) + "秒";
							}
						}
						return time;
					}
				},
				//  清除定时器
				destroyed: function() {
					window.clearInterval(this.inter);
				},
				methods: {
                    // 初始化
                    init() {
                    },

                    goOffer() {
                    if (this.count <= 0) {
                        layer.msg("竞拍活动已结束", {
                            time: 2000,
                            icon: 5
                        })
                        return;
                    }
                    //如果当前出价等于一口价，竞拍结束
                    if(this.detail.endprice>0 && this.detail.price>=this.detail.endprice) {
                        layer.msg("商品已被一口价拍下", {
                            time: 2000,
                            icon: 5
                        })
                        return;
                    }
                        vue.offerPrice = vue.detail.price + vue.detail.stepprice
                        vue.auctionShowType = true
                    },
                    auctionOffer(){
                        let max = Number(vue.detail.endprice)
                        let min = Number(vue.detail.price) + Number(vue.detail.stepprice)
                        if (vue.offerPrice > max) {
                            vue.offerPrice = max
                            layer.msg("超过一口价", {
                                time: 2000,
                                icon: 5
                            })
                            return;
                        } else if (vue.offerPrice < min) {
                            vue.offerPrice = min
                            layer.msg("不能低于当前竞价", {
                                time: 2000,
                                icon: 5
                            })
                            return;
                        }
                        layui.http.requestJson('auctionxianzhiwupin/add', 'post', {
                            userid: localStorage.getItem('userid'),
                            auctionprice:vue.offerPrice,
                            auctionstatus:'领先',
                            avatarurl:localStorage.getItem('headportrait'),
                            nickname:localStorage.getItem('adminName'),
                            refid:vue.detail.id,
                        }, function(res) {
                        });
                        var data = JSON.parse(JSON.stringify(vue.detail))
                        data.price = vue.offerPrice
                        layui.http.requestJson('xianzhiwupin/update', 'post', data, function(res) {
                            layui.http.request('storeup/list', 'get', {
                                page: 1,
                                limit: 1,
                                type:'31',
                                refid : vue.detail.id,
                                tablename : vue.detailTable,
                                userid: localStorage.getItem('userid'),
                            }, (res) => {
                                  if (res.code == 0 && res.data.list.length > 0) {
                                        let delIds = new Array();
                                        delIds.push(res.data.list[0].id);
                                        layui.http.requestJson(`storeup/delete`, 'post', delIds, function(res) {
                                        });
                                  }
                                layui.http.requestJson('storeup/save', 'post', {
                                    userid: localStorage.getItem('userid'),
                                    type:'31',
                                    name: vue.title,
                                    picture:vue.detail.tupian.split(",")[0],
                                    refid: vue.detail.id,
                                    tablename: vue.detailTable
                                }, function(res) {
                                });
                            });
                            layer.msg('出价成功', {
                                time: 1000,
                                icon: 6
                            }, function() {
                                window.location.reload();
                            });
                        });
                    },
					jump(url) {
						jump(url)
					},
					isAuth(tablename, button) {
						return isFrontAuth(tablename, button)
					},
					// 倒计时初始化
					countDown() {
						let reversetime = new Date(this.detail.reversetime).getTime()
						let now = new Date().getTime();
						let count = reversetime - now;
						if (count > 0) {
							this.count = count / 1000
							var _this = this;
							this.inter = window.setInterval(function() {
								_this.count = _this.count - 1;
								if (_this.count < 0) {
									window.clearInterval(_this.inter);
									layer.msg("活动已结束", {
										time: 2000,
										icon: 5
									})
								}
							}, 1000);
						}
					},

					// 赞
					thumbsupnumClick() {
						var _this=this;
						layui.http.request('storeup/list', 'get', {
							page: 1,
							limit: 1,
							type:'%2%',
							refid : this.detail.id,
							tablename : this.detailTable,
							userid: localStorage.getItem('userid'),
						}, (res) => {
							vue.dataList = res.data.list
							if(res.data.list.length==1) {
								layui.http.requestJson(`storeup/delete`, 'post', [res.data.list[0].id], function(res) {
									_this.detail.thumbsupnum = parseInt(_this.detail.thumbsupnum) - 1
									layui.http.requestJson(`${_this.detailTable}/update`, 'post', _this.detail, function(res2) {
										console.log(res2);
									})
									layer.msg('取消成功', {
										time: 1000,
										icon: 5
									}, function() {
										window.location.reload();
									});
								});
								return;
							}
							layui.http.requestJson('storeup/save', 'post', {
								userid: localStorage.getItem('userid'),
								type:'21',
								name: this.title,
								picture:vue.detail.tupian.split(",")[0],
								refid: this.detail.id,
								tablename: this.detailTable
							}, function(res) {
								_this.detail.thumbsupnum = parseInt(_this.detail.thumbsupnum) + 1
								layui.http.requestJson(`${_this.detailTable}/update`, 'post', _this.detail, function(res2) {
									console.log(res2);
								})
								layer.msg('点赞成功', {
									time: 1000,
									icon: 6
								}, function() {
									window.location.reload();
								});
							});
						});
					},
					// 踩
					crazilynumClick() {
						var _this=this;
						layui.http.request('storeup/list', 'get', {
							page: 1,
							limit: 1,
							type:'%2%',
							refid : this.detail.id,
							tablename : this.detailTable,
							userid: localStorage.getItem('userid'),
						}, (res) => {
							vue.dataList = res.data.list
							if(res.data.list.length==1) {
								layui.http.requestJson(`storeup/delete`, 'post', [res.data.list[0].id], function(res) {
									_this.detail.crazilynum = parseInt(_this.detail.crazilynum) - 1
									layui.http.requestJson(`${_this.detailTable}/update`, 'post', _this.detail, function(res2) {
										console.log(res2);
									})
									layer.msg('取消成功', {
										time: 1000,
										icon: 5
									}, function() {
										window.location.reload();
									});
								});
								return;
							}
							layui.http.requestJson('storeup/save', 'post', {
								userid: localStorage.getItem('userid'),
								type:'22',
								name: this.title,
								picture:vue.detail.tupian.split(",")[0],
								refid: this.detail.id,
								tablename: this.detailTable
							}, function(res) {
								_this.detail.crazilynum = parseInt(_this.detail.crazilynum) + 1
								layui.http.requestJson(`${_this.detailTable}/update`, 'post', _this.detail, function(res2) {
									console.log(res2);
								})
								layer.msg('点踩成功', {
									time: 1000,
									icon: 6
								}, function() {
									window.location.reload();
								});
							});
						});
					},
					// 下载文件
					downFile(url) {
						var download = $("#download");
						download.append(
							"<a id=\"down\" href=\"aaaa.txt\" target=\"_blank\" download=\"aaaa.txt\" style=\"display:none\">下载该文件</a>");
						console.log(download);
						$("#down")[0].click();
					},
					// 跨表
					onAcrossTap(acrossTable,statusColumnName,tips,statusColumnValue){
						localStorage.setItem('crossTable',`xianzhiwupin`);
						localStorage.setItem('crossObj', JSON.stringify(this.detail));
						localStorage.setItem('statusColumnName',statusColumnName);
						localStorage.setItem('statusColumnValue',statusColumnValue);
						localStorage.setItem('tips',tips);

						if(statusColumnName!=''&&!statusColumnName.startsWith("[")) {
							var obj = JSON.parse(localStorage.getItem('crossObj'));
							for (var o in obj){
								if(o==statusColumnName && obj[o]==statusColumnValue){
									layer.msg(tips, {
										time: 2000,
										icon: 5
									});
									return
								}
							}
						}

						jump(`../${acrossTable}/add.jsp?corss=true`);
					},

					// 立即购买
					buyTap() {
						// 活动倒计时限制
						if (!this.auctionBuyFlag && this.count <= 0) {
							layer.msg(`活动已结束`, {
								time: 2000,
								icon: 5
							});
							return
						}
						// 保存到storage中，在确认下单页面中获取要购买的商品
						localStorage.setItem('orderGoods', JSON.stringify([{
							tablename: `${this.detailTable}`,
							goodid: this.detail.id,
							goodname: this.title,
                            zhanghao: this.detail.zhanghao,
                            picture:vue.detail.tupian.split(",")[0],
							buynumber: this.buynumber,
							userid: localStorage.getItem('userid'),
							price: this.detail.price,
							discountprice: this.detail.vipprice ? this.detail.vipprice : 0
						}]));
						// 跳转到确认下单页面
						jump('../shop-order/confirm.jsp?type=1');
					},



					// 收藏商品
					storeUp() {
						layui.http.request('storeup/list', 'get', {
							page: 1,
							limit: 1,
							type: 1,
							refid : this.detail.id,
							tablename : this.detailTable,
							userid: localStorage.getItem('userid'),
						}, (res) => {
							vue.dataList = res.data.list
							if(res.data.list.length==1) {
								layui.http.requestJson(`storeup/delete`, 'post', [res.data.list[0].id], function(res) {
									layer.msg('取消成功', {
										time: 1000,
										icon: 5
									}, function() {
										window.location.reload();
									});
								});
								return;
							}
							layui.http.requestJson('storeup/save', 'post', {
								userid: localStorage.getItem('userid'),
								name: this.title,
							    type:1,
								picture:vue.detail.tupian.split(",")[0],
								refid: this.detail.id,
								tablename: this.detailTable
							}, function(res) {
								layer.msg('收藏成功', {
									time: 1000,
									icon: 6
								}, function() {
									window.location.reload();
								});
							});
						});
					},
					
				}
			})
			layui.use(['layer', 'form', 'element', 'carousel', 'http', 'jquery', 'laypage'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var form = layui.form;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var laypage = layui.laypage;
				var limit = 10;
				// 数据ID
				var id = http.getParam('id');
				vue.detail.id = id;
				vue.baseurl = http.baseurl;
                vue.init();
                // 获取轮播图 数据
                http.request('config/list', 'get', {
                    page: 1,
                    limit: 3
                }, function(res) {
                    if (res.data.list.length > 0) {
                        let swiperList = [];
                        res.data.list.forEach(element => {
                          if (element.value != null) {
                            swiperList.push({
                              img: http.baseurl+element.value
                            });
                          }
                        });
                        vue.swiperList2 = swiperList;

                        vue.$nextTick(() => {
                            carousel.render({
                                elem: '#layui-carousel',
                                width: '100%',
                                height: '680px',
                                anim: 'fade',
                                autoplay: 'true',
                                interval: '5000',
                                arrow: 'none',
                                indicator: 'inside'
                            });
                        })
                    }
                });
				// 商品信息
				http.request(`${vue.detailTable}/detail/` + id, 'get', {}, function(res) {
					// 详情信息
					vue.detail = res.data
					vue.title = vue.detail.shangpinmingcheng;
					// 轮播图片
					vue.swiperList = vue.detail.tupian ? vue.detail.tupian.split(",") : [];
					// 轮播图
					vue.$nextTick(() => {
						carousel.render({
							elem: '#swiper',
							width: '38%',
							height: '600px',
							anim: 'fade',
							autoplay: 'true',
							interval: '6000',
							arrow: 'none',
							indicator: 'inside'
						});
					})

					// 倒计时效果初始化
					vue.countDown();

				});
				if(localStorage.getItem('userid')){
					http.request(`storeup/list`, 'get', {
						page: 1,
						limit: 1,
						type:1,
						refid : vue.detail.id,
						tablename : vue.detailTable,
						userid: localStorage.getItem('userid'),
					}, function(res) {
						vue.storeupFlag = res.data.list.length;
					})
				}

				if(localStorage.getItem('userid')){
					http.request(`storeup/list`, 'get', {
						page: 1,
						limit: 1,
						type:'%2%',
						refid : vue.detail.id,
						tablename : vue.detailTable,
						userid: localStorage.getItem('userid'),
					}, function(res) {
						if(res.data.list.length>0) {
							if(res.data.list[0].type=='21') {
								vue.thumbsupFlag = 1;
							} else {
								vue.crazilyFlag = 1;
							}
						}
					})
				}



                http.request(`auctionxianzhiwupin/list`, 'get', {
                    sort:'addtime',
                    order:'desc',
                    refid:id
                }, function(res) {
                    // 出价记录
                    vue.auctionRecordList = res.data.list
                });
                if(localStorage.getItem('Token')) {
                    http.request(`auctionxianzhiwupin/list`, 'get', {
                        page: 1,
                        limit: 1,
                        refid: id,
                        userid: localStorage.getItem('userid'),
                        sort:'addtime',
                        order:'desc',
                    }, function(res) {
                        if (res.code == 0 && res.data.list.length == 1 && res.data.list[0].auctionstatus=='领先') {
                            http.request(`orders/list`, 'get', {
                                limit: 1,
                                userid: localStorage.getItem('userid'),
                                goodid: id,
                            }, function(res) {
                                if (res.code == 0 && res.data.list.length == 0) {
                                    vue.auctionBuyFlag = true;
                                }
                            });
                        }
                    });
                }

				// 获取评论
				http.request(`discuss${vue.detailTable}/list`, 'get', {
					page: 1,
					limit: limit,
					refid: vue.detail.id,
					//userid: localStorage.getItem('userid')
				}, function(res) {
					vue.dataList = res.data.list
					// 分页
					laypage.render({
						elem: 'pager',
						count: res.data.total,
						limit: limit,
						groups: 5,
						layout: ["count","prev","page","next","limit","skip"],
						prev: '上一页',
						next: '下一页',
						jump: function(obj, first) {
							//首次不执行
							if (!first) {
								http.request(`discuss${vue.detailTable}/list`, 'get', {
									page: obj.curr,
									limit: obj.limit,
									userid: localStorage.getItem('userid')
								}, function(res) {
									vue.dataList = res.data.list
								})
							}
						}
					});
				})
				// 提交评论
				form.on('submit(*)', function(data) {
					data = data.field;
					data.userid = localStorage.getItem('userid')
					data.nickname = localStorage.getItem('adminName')
					data.refid = vue.detail.id
                    data.avatarurl = localStorage.getItem('headportrait')?localStorage.getItem('headportrait'):'';
                                layui.http.request('orders/list', 'get', {
                                        page: 1,
                                        limit: 1,
                                        userid: localStorage.getItem('userid'),
                                        goodid: vue.detail.id,
                                        status: '已完成'
                                }, function(res) {
                                        debugger
                                        vue.dataList = res.data.list
                                        if(res.data.list.length==0) {
                                                layer.msg('请完成订单后再评论', {
                                                                time: 2000,
                                                                icon: 6
                                                        }, function() {
                                                        });
                                                return false
                                        } else {
                                                http.requestJson(`discuss${vue.detailTable}/save`, 'post', data, function(res) {
                                                        layer.msg('评论成功', {
                                                                time: 2000,
                                                                icon: 6
                                                        }, function() {
                                                                window.location.reload();
                                                        });
                                                        return false
                                                });

                                        }
                                })
					return false
				});
			});
		</script>
	</body>
</html>
