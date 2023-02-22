<!-- 顶部蓝色 -->
<template>
	<view class="contaier">
		<!-- <view class="top-bg">
			<view class="text-white text-bold text-xxxl">前端铺子</view>
			<view class="margin-top-xs text-white">欢迎使用，请先登录</view>
		</view> -->

		<view class="input-box padding-lr">
			<view class="t-b">注 册</view>
			<u-form :model="form" ref="uForm">
				<u-form-item class="margin-top" label="手机号" prop="phone">

					<u-input placeholder="请输入手机号" v-model="form.phone" name="input" type="number" maxlength="11" />
				</u-form-item>

				<u-form-item class="margin-top" label="标识" prop="unique">

					<u-input placeholder="请输入唯一标识" v-model="form.unique" name="input" type="text" maxlength="20" />
				</u-form-item>

				<u-form-item class="margin-top" label="验证码" prop="code" style="display: flex;">

					<u-input placeholder="请输入验证码" v-model="form.code" name="input" style="display: inline-block;"
						type="text" maxlength="4" />
					<image @click="getImageCode()" :src="imageCode" style="width: 200rpx;height: 100rpx;" />
				</u-form-item>

				<u-form-item class="margin-top" label="密码" prop="password">

					<u-input placeholder="请输入密码" v-model="form.password" name="input" type="password" maxlength="20" />
				</u-form-item>

				<u-form-item class="margin-top" label="确认密码" prop="passwordAgin">

					<u-input placeholder="请再次确认密码" v-model="form.passwordAgin" name="input" type="password"
						maxlength="20" />
				</u-form-item>


				<!-- <view class="cu-form-group solid-bottom">
					<view class="title">验证码</view>
					<input placeholder="输入框带个按钮" name="input"></input>
					<button class='cu-btn bg-login-zl shadow'>验证码</button>
				</view> -->

				<button class="cu-btn block round bg-login-zl margin-tb-sm lg" @click="register()">注册</button>
			</u-form>
		</view>

	</view>
</template>
<script>
	import request from '@/common/request.js';
	import md5 from '@/common/md5.min.js';

	export default {
		data() {
			return {
				imageCode: '',
				form: {
					phone: '',
					unique: '',
					code: '',
					password: '',
					passwordAgin: ''
				},
				rules: {
					phone: [{
						required: true,
						message: '请输入手机号码',
						// 可以单个或者同时写两个触发验证方式 
						trigger: ['change', 'blur'],
					}],
					unique: [{
						required: true,
						message: '请输入唯一标识',
						// 可以单个或者同时写两个触发验证方式 
						trigger: ['change', 'blur'],
					}],
					code: [{
						required: true,
						message: '请输入验证码',
						// 可以单个或者同时写两个触发验证方式 
						trigger: ['change', 'blur'],
					}],
					password: [{
						required: true,
						message: '请输入密码',
						// 可以单个或者同时写两个触发验证方式 
						trigger: ['change', 'blur'],
					}],
					passwordAgin: [{
						required: true,
						message: '请再次确认密码',
						// 可以单个或者同时写两个触发验证方式 
						trigger: ['change', 'blur'],
					}],
				}
			};
		},
		onLoad(option) {
			console.log(option)
			this.getImageCode()
		},
		methods: {
			register() {
				this.$refs.uForm.validate(valid => {
					if (valid) {
						// 注册用户

						uni.showLoading({
							title: '加载中'
						});
						let opts = {
							url: 'saas-hearts-service/api/custUser/register',
							method: 'post'
						};
						let custUser = {
							phone: this.form.phone,
							uniqueIdenty:this.form.unique,
							password:md5(this.form.password)

						};
						
						request.httpRequestSaas(opts,custUser).then(res => {
							console.log(res);
							uni.hideLoading();
							if (res.statusCode === 200) {
								uni.navigateBack();
								
							} else {
								console.log('数据请求错误～');
							}
						});



					} else {
						console.log('验证失败');
					}
				});
			},
			getImageCode() {
				uni.showLoading({
					title: '加载中'
				});
				let opts = {
					url: 'saas-common-service/api/validate/code/get',
					method: 'get'
				};
				request.httpRequestSaas(opts).then(res => {
					console.log(res);
					uni.hideLoading();
					if (res.data) {

						this.imageCode = this.filterBase64(res.data.code);
					} else {
						console.log('数据请求错误～');
					}
				});
			},
			filterBase64(codeImages) {
				return codeImages.replace(/[\r\n]/g, "");
			},
		},
		// 必须要在onReady生命周期，因为onLoad生命周期组件可能尚未创建完毕
		onReady() {
			this.$refs.uForm.setRules(this.rules);
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
