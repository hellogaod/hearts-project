<!-- 顶部蓝色 -->
<template>
	<view class="contaier">
		<!-- <view class="top-bg">
			<view class="text-white text-bold text-xxxl">前端铺子</view>
			<view class="margin-top-xs text-white">欢迎使用，请先登录</view>
		</view> -->

		<view class="input-box padding-lr">
			<view class="t-b">登 录</view>
			<form>
				<view class="cu-form-group margin-top">
					<view class="title">手机号</view>
					<input placeholder="请输入手机号" v-model="phone" name="input" type="number" maxlength="11"></input>
				</view>
				<view class="cu-form-group">
					<view class="title">密码</view>
					<input placeholder="请输入密码" v-model="password" name="input" type="password"></input>
				</view>
				<!-- <view class="cu-form-group solid-bottom">
					<view class="title">验证码</view>
					<input placeholder="输入框带个按钮" name="input"></input>
					<button class='cu-btn bg-login-zl shadow'>验证码</button>
				</view> -->
			</form>
		</view>

		<view class="padding margin-top-xs">
			<button class="cu-btn block round bg-login-zl margin-tb-sm lg" @click="login()">登录</button>
			<view class="text-gray flex justify-between padding-lr-sm">
				<text>忘记密码</text>
				<text @click="register()">注册账号</text>
			</view>
		</view>

	</view>
</template>
<script>
	import request from '@/common/request.js';
	import md5 from '@/common/md5.min.js';

	export default {
		data() {
			return {
				phone: '',
				password: ''
			};
		},
		onLoad() {

		},
		methods: {
			register() {
				uni.navigateTo({
					url: 'register',
				})
			},

			login() {
				var that = this;
				if (!that.phone) {
					uni.showToast({
						title: '请输入手机号',
						icon: 'none'
					});
					return;
				}

				if (!that.password) {
					uni.showToast({
						title: '请输入密码',
						icon: 'none'
					});
					return;
				}

				// 登录
				uni.showLoading({
					title: '加载中'
				});
				let opts = {
					url: 'saas-hearts-service/api/custUser/doLogin',
					method: 'post'
				};
				let custUser = {
					phone: this.phone,
					password: md5(this.password)

				};

				request.httpRequestSaas(opts, custUser).then(res => {
					console.log(res);
					uni.hideLoading();
					if (res.statusCode === 200) {

						uni.setStorage({
							key: 'token',
							data: res.data.token,
							success: function() {
								
								uni.setStorage({
									key: 'user',
									data: res.data,
									success: function() {
										uni.navigateBack();
									}
								});
							}
						});



					} else {
						console.log('数据请求错误～');
					}
				});
			}
		}
	};
</script>
<style lang="scss" scoped>
	.contaier {
		height: 100vh;
		background-color: #ffffff;
	}

	.t-b {
		text-align: left;
		font-size: 46rpx;
		color: #333;
		font-weight: bold;
		margin: 0 0 50rpx 20rpx;
	}

	.top-bg {
		width: 750rpx;
		background-image: url(https://cdn.zhoukaiwen.com/head-bg.png);
		height: 480rpx;
		background-size: 100%;
		background-repeat: no-repeat;
		text-align: center;
		padding-top: 170rpx;
	}

	.bg-login-zl {
		background-image: linear-gradient(45deg, #727CFB, #46D0ED);
		color: #ffffff;
	}
</style>
