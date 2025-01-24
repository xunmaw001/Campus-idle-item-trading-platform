<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!-- 充值 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>充值</title>
		<!-- bootstrap样式，地图插件使用 -->
		<link rel="stylesheet" href="../../css/bootstrap.min.css" />
		<!-- layui -->
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<style>
		
	</style>
	<body>
		<div id="app">
			<!-- 轮播图 -->
			<div id="layui-carousel" class="layui-carousel">
				<div carousel-item>
					<div class="layui-carousel-item" v-for="(item,index) in swiperList" :key="index">
						<img :src="item.img" />
					</div>
				</div>
			</div>
			<!-- 轮播图 -->

			<!-- 标题 -->
			<div id="breadcrumb">
				<span class="en">USER / ADDRESS</span>
				<span class="cn">收货地址添加</span>
			</div>
			<!-- 标题 -->

			<div id="center-container">
				<!-- 个人中心菜单 config.js-->
				<div class="left-container">
					<ul class="layui-nav layui-nav-tree">
						<li v-for="(item,index) in centerMenu" v-bind:key="index" class="layui-nav-item" :class="item.url=='../shop-address/list.jsp'?'layui-this':''">
							<a :href="'javascript:window.location.href=\''+item.url+'\''">{{item.name}}</a>
						</li>
					</ul>
				</div>
				<!-- 添加地址表单 -->
				<div :style='{"width":"100%","padding":"0px","margin":"0","background":"none","flex":"1"}' class="right-container">
					<form :style='{"padding":"80px 20px 100px","boxShadow":"0px 0,px 0px #eee","borderColor":"#e6a4b4","flexWrap":"wrap","background":"url(http://codegen.caihongy.cn/20230207/346e413dce8f4515a5a57219df032ccd.png) no-repeat left top / auto 100%,url(http://codegen.caihongy.cn/20230207/e75d04594fa6401b9993f023e829f7b8.png) no-repeat right bottom / auto 100%","borderWidth":"0px","display":"block","width":"100%","borderStyle":"outset","justifyContent":"space-between","height":"auto"}' class="layui-form" lay-filter="myForm">
						<div :style='{"padding":"10px","margin":"0 0 0px 0","borderColor":"#efe4d4","alignItems":"center","background":"none","borderWidth":"0 0 0px","display":"flex","width":"100%","borderStyle":"solid"}' class="layui-form-item layui-form-text">
							<label :style='{"padding":"0 15px","color":"#333","textAlign":"right","width":"150px","lineHeight":"40px","fontSize":"15px","fontWeight":"500"}' class="layui-form-label">联系人：</label>
								<input :style='{"padding":"0 10px","margin":"0","borderColor":"#eee","color":"#555","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" name="name" id="name" required lay-verify="required" placeholder="联系人" autocomplete="off"
								 class="layui-input">
						</div>
						<div :style='{"padding":"10px","margin":"0 0 0px 0","borderColor":"#efe4d4","alignItems":"center","background":"none","borderWidth":"0 0 0px","display":"flex","width":"100%","borderStyle":"solid"}' class="layui-form-item layui-form-text">
							<label :style='{"padding":"0 15px","color":"#333","textAlign":"right","width":"150px","lineHeight":"40px","fontSize":"15px","fontWeight":"500"}' class="layui-form-label">手机号码：</label>
								<input :style='{"padding":"0 10px","margin":"0","borderColor":"#eee","color":"#555","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" name="phone" id="phone" required lay-verify="required|phone" placeholder="手机号码" autocomplete="off"
								 class="layui-input">
						</div>
						<div :style='{"padding":"10px","margin":"0 0 0px 0","borderColor":"#efe4d4","alignItems":"center","background":"none","borderWidth":"0 0 0px","display":"flex","width":"100%","borderStyle":"solid"}' class="layui-form-item layui-form-text l-redio">
							<label :style='{"padding":"0 15px","color":"#333","textAlign":"right","width":"150px","lineHeight":"40px","fontSize":"15px","fontWeight":"500"}' class="layui-form-label">默认地址：</label>
							<div class="layui-input-block" style="width: 300px;text-align: left;margin-left: 0;">
								<input type="radio" name="isdefault" value="是" title="是" checked>
								<input type="radio" name="isdefault" value="否" title="否">
							</div>
						</div>
						<div :style='{"padding":"10px","margin":"0 0 0px 0","borderColor":"#efe4d4","alignItems":"center","background":"none","borderWidth":"0 0 0px","display":"flex","width":"100%","borderStyle":"solid"}' class="layui-form-item layui-form-text">
							<label :style='{"padding":"0 15px","color":"#333","textAlign":"right","width":"150px","lineHeight":"40px","fontSize":"15px","fontWeight":"500"}' class="layui-form-label">地址：</label>
								<input :style='{"padding":"0 10px","margin":"0","borderColor":"#eee","color":"#555","outline":"none","borderRadius":"30px","borderWidth":"1px","background":"#fff","width":"400px","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="text" name="address" id="address" required lay-verify="required" placeholder="地址" autocomplete="off"
								 class="layui-input">
						</div>
						<div :style='{"width":"100%","margin":"50px 0 20px 0px","alignItems":"center","textAlign":"center","justifyContent":"center","display":"flex"}' class="layui-form-item">
							<button :style='{"cursor":"pointer","padding":"0px 20px","margin":"0 20px 0 0","borderColor":"#cbbd9a","color":"#937937","minWidth":"130px","outline":"none","borderRadius":"20px","background":"linear-gradient(30deg, rgba(255,255,255,1) 0%, rgba(207,193,176,1) 20%, rgba(246,236,223,1) 50%, rgba(207,193,176,1) 80%, rgba(255,255,255,1) 100%)","borderWidth":"1px 0","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' class="layui-btn btn-submit" lay-submit lay-filter="*">添加</button>
							<button :style='{"cursor":"pointer","padding":"0px 20px","margin":"0 10px","borderColor":"#ddd","color":"#888","minWidth":"130px","outline":"none","borderRadius":"30px","background":"linear-gradient(30deg, rgba(255,255,255,1) 0%, rgba(200,200,200,1) 20%, rgba(240,240,240,1) 50%, rgba(200,200,200,1) 80%, rgba(255,255,255,1) 100%)","borderWidth":"1px 0","width":"auto","fontSize":"14px","lineHeight":"40px","borderStyle":"solid","height":"40px"}' type="reset" class="layui-btn layui-btn-primary">重置</button>
						</div>
					</form>
				</div>
			</div>

		</div>

		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>
		<!-- 地图 -->
		<script type="text/javascript" src="../../js/jquery.js"></script>
		<script type="text/javascript" src="http://webapi.amap.com/maps?v=1.3&key=ca04cee7ac952691aa67a131e6f0cee0"></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js"></script>
		<script type="text/javascript" src="../../js/bootstrap.AMapPositionPicker.js"></script>

		<script>
			var jquery = $;

			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
					centerMenu: centerMenu
				},
				filters: {
					newsDesc: function(val) {
						if (val) {
							if (val.length > 200) {
								return val.substring(0, 200).replace(/<[^>]*>/g).replace(/undefined/g, '');
							} else {
								return val.replace(/<[^>]*>/g).replace(/undefined/g, '');
							}
						}
						return '';
					}
				},
				methods: {
					jump(url) {
						jump(url)
					}
				}
			})

			// 初始化地图插件
			jquery(document).ready(function() {
			});

			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'laypage'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var laypage = layui.laypage;
				var form = layui.form;

				var limit = 10;

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
                        vue.swiperList = swiperList;

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
				// 表单校验
				form.verify({
					phone: function(value, item) {
						if (!isMobile(value)) {
							return '请输入正确的手机号码'
						}
					},
				});

				// 提交表单
				form.on('submit(*)', function(data) {
					data = data.field;
					data.userid = localStorage.getItem('userid');
					console.log(data);
					http.requestJson(`address/add`, 'post', data, function(data) {
						layer.msg('添加成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.history.go(-1);
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
