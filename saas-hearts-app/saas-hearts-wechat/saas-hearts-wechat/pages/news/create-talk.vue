<!-- 蓝色简洁登录页面 -->
<template>
	<view class="t-login">
		<!-- 页面装饰图片 -->
		<!-- <image class="img-a" src="https://zhoukaiwen.com/img/loginImg/2.png"></image> -->
		<!-- <image class="img-b" src="https://zhoukaiwen.com/img/loginImg/3.png"></image> -->
		<!-- 标题 -->
		<!-- <view class="t-b">{{ title }}</view> -->
		<!-- <view class="t-b2">欢迎使用，前端铺子样式组件</view> -->
		<form class="cl">
			<view class="t-a">
				<!-- <image src="https://zhoukaiwen.com/img/loginImg/sj.png"></image> -->
				<!-- <view class="line"></view> -->
				<input type="text" name="title" placeholder="请输入标题" maxlength="20" v-model="title" />
			</view>
			<view class="t-a">
				<!-- <image src="https://zhoukaiwen.com/img/loginImg/yz.png"></image> -->
				<!-- <view class="line"></view> -->
				<!-- <u-input v-model="content" :type="textarea" :height="100" :auto-height="true" /> -->
				<input type="textarea" name="contentName" maxlength="100" placeholder="请输入内容" v-model="content"
					style="height: 100rpx;" />
				<!-- <view v-if="showText" class="t-c" @tap="getCode()">发送短信</view> -->
				<!-- <view v-else class="t-c" style="background-color: #A7A7A7;">重新发送({{ second }})</view> -->
			</view>
			<button @tap="createTalk()">发 布</button>
		</form>
		<!-- <view class="t-f"><text>————— 第三方账号登录 —————</text></view>
		<view class="t-e cl">
			<view class="t-g" @tap="wxLogin()">
				<image src="https://zhoukaiwen.com/img/loginImg/wx.png"></image>
			</view>
			<view class="t-g" @tap="zfbLogin()">
				<image src="https://zhoukaiwen.com/img/loginImg/qq.png"></image>
			</view>
		</view> -->
	</view>
</template>
<script>
	import request from '@/common/request.js';
	export default {
		data() {
			return {
				second: 60, //默认60秒
				showText: true, //判断短信是否发送
				title: '', //请输入标题
				content: '' //请输入内容
			};
		},
		onLoad() {},
		methods: {
			//当前登录按钮操作
			createTalk() {
				var that = this;
				if (!that.title) {
					uni.showToast({
						title: '请输入标题',
						icon: 'none'
					});
					return;
				}
				// if (!/^[1][3,4,5,7,8,9][0-9]{9}$/.test(that.title)) {
				// 	uni.showToast({
				// 		title: '请输入正确手机号',
				// 		icon: 'none'
				// 	});
				// 	return;
				// }
				if (!that.content) {
					uni.showToast({
						title: '请输入内容',
						icon: 'none'
					});
					return;
				}
				uni.showLoading({
					title: '加载中'
				});
				let opts = {
					url: 'saas-hearts-service/api/custTalk/addTalk',
					method: 'post'
				};
				let custTalk = {
					title: this.title,
					content: this.content
				};

				request.httpTokenRequestSaas(opts, custTalk).then(res => {
					console.log(res);
					uni.hideLoading();
					if (res.statusCode === 200) {
						let pages = getCurrentPages();
						let prePage = pages[pages.length - 2];//上一页
						prePage.$vm.onRefreshNews();
						
						uni.navigateBack()
						

					} else {
						console.log('数据请求错误～');
					}
				});
			},
			//获取短信验证码
			getCode() {
				var that = this;
				var interval = setInterval(() => {
					that.showText = false;
					var times = that.second - 1;
					//that.second = times<10?'0'+times:times ;//小于10秒补 0
					that.second = times;
					console.log(times);
				}, 1000);
				setTimeout(() => {
					clearInterval(interval);
					that.second = 60;
					that.showText = true;
				}, 60000);
				//这里请求后台获取短信验证码
				uni.request({
					//......//此处省略
					success: function(res) {
						that.showText = false;
					}
				});
			},
			//等三方微信登录
			wxLogin() {
				uni.showToast({
					title: '微信登录',
					icon: 'none'
				});
			},
			//第三方支付宝登录
			zfbLogin() {
				uni.showToast({
					title: '支付宝登录',
					icon: 'none'
				});
			}
		}
	};
</script>
<style>
	.img-a {
		position: absolute;
		width: 100%;
		top: -150rpx;
		right: 0;
	}

	.img-b {
		position: absolute;
		width: 50%;
		bottom: 0;
		left: -50rpx;
		/* margin-bottom: -200rpx; */
	}

	.t-login {
		width: 650rpx;
		margin: 0 auto;
		font-size: 28rpx;
		color: #000;
	}

	.t-login button {
		font-size: 28rpx;
		background: #5677fc;
		color: #fff;
		height: 90rpx;
		line-height: 90rpx;
		box-shadow: 0 5px 7px 0 rgba(86, 119, 252, 0.2);
	}

	.t-login input {
		padding: 0 20rpx 0 20rpx;
		height: 90rpx;
		line-height: 90rpx;
		margin-top: 50rpx;
		margin-bottom: 50rpx;
		border-bottom: 1px solid #e9e9e9;
		font-size: 28rpx;
	}

	.t-login .t-a {
		position: relative;
	}

	.t-login .t-a image {
		width: 40rpx;
		height: 40rpx;
		position: absolute;
		left: 40rpx;
		top: 28rpx;
		/* border-right: 2rpx solid #dedede; */
		margin-right: 20rpx;
	}

	.t-login .t-a .line {
		width: 2rpx;
		height: 40rpx;
		background-color: #dedede;
		position: absolute;
		top: 28rpx;
		left: 98rpx;
	}

	.t-login .t-b {
		text-align: left;
		font-size: 46rpx;
		color: #000;
		padding: 300rpx 0 30rpx 0;
		font-weight: bold;
	}

	.t-login .t-b2 {
		text-align: left;
		font-size: 32rpx;
		color: #aaaaaa;
		padding: 0rpx 0 120rpx 0;
	}

	.t-login .t-c {
		position: absolute;
		right: 22rpx;
		top: 22rpx;
		background: #5677fc;
		color: #fff;
		font-size: 24rpx;
		border-radius: 50rpx;
		height: 50rpx;
		line-height: 50rpx;
		padding: 0 25rpx;
	}

	.t-login .t-d {
		text-align: center;
		color: #999;
		margin: 80rpx 0;
	}

	.t-login .t-e {
		text-align: center;
		width: 250rpx;
		margin: 80rpx auto 0;
	}

	.t-login .t-g {
		float: left;
		width: 50%;
	}

	.t-login .t-e image {
		width: 50rpx;
		height: 50rpx;
	}

	.t-login .t-f {
		text-align: center;
		margin: 200rpx 0 0 0;
		color: #666;
	}

	.t-login .t-f text {
		margin-left: 20rpx;
		color: #aaaaaa;
		font-size: 27rpx;
	}

	.t-login .uni-input-placeholder {
		color: #000;
	}

	.cl {
		zoom: 1;
	}

	.cl:after {
		clear: both;
		display: block;
		visibility: hidden;
		height: 0;
		content: '\20';
	}
</style>
