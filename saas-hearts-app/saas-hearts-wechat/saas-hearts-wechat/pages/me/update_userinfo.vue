<!-- 修改用户信息 -->
<template>

	<view>
		<view class="wrap padding-xl" style="background-color: #fff;text-align: center;">

			<image src="../../static/icon_head_default.png" style="height: 140rpx;width: 140rpx;"></image>
			<view style="font-size: 32rpx;margin-top: 30rpx;">
				点击修改头像
			</view>

		</view>
		<view style="height: 10rpx;background-color: #efefef;"></view>

		<view style="background-color: #fff;padding:0 20rpx;">
			<u-form :model="form" ref="uForm">
				<u-form-item label="昵称">
					<u-input v-model="form.nickname" />
				</u-form-item>
			
				<u-form-item label="城市">
					<u-input v-model="form.city" />
				</u-form-item>
				<u-form-item label="签名">
					<u-input v-model="form.intro" />
				</u-form-item>
			</u-form>

		</view>

	</view>

</template>

<script>
	import request from '@/common/request.js';
	export default {
		data() {
			return {
				id:'',
				form:{
					nikename:'',
				},
			}
		},
		// 分享小程序

		onLoad(option) {
			console.log("id:" + option.id)
			this.id = option.id;
		},
		mounted() {
			this.getUserInfo();
		},
		methods: {
			getUserInfo() {
				
				let opts = {
					url: 'saas-hearts-service/api/custUser/getUserDetailById?userId=' + this.id,
					method: 'get'
				};
				uni.showLoading({
					title: '加载中'
				});
				request.httpRequestSaas(opts).then(res => {
					console.log(res);
					uni.hideLoading();
					if (res.statusCode == 200) {
						this.form = res.data;
						
					} else {
						console.log('数据请求错误～');
					}
				});
			},

		}
	}
</script>

<style lang="scss" scoped>

</style>
