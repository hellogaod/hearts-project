<!-- 设置界面 -->
<template>

	<view>

		<view style="padding-top: 20rpx;background-color: #fff;">
			<u-row>
				<u-col span="9">
					<u-row>
						<view style="text-align: left;margin-left: 20rpx;font-size: 24rpx;padding: 10rpx;">
							消息推送设置
						</view>
					</u-row>
					<u-row>
						<view style="text-align: left;margin-left: 20rpx;font-size: 30rpx;padding: 10rpx;">
							话题，评论回复等推送提醒设置
						</view>
					</u-row>
				</u-col>
				<u-col span="3">
					<view style="text-align: center;">
						<image src="../../static/icon_switch_on.png" style="width: 105rpx;height: 70rpx;"></image>
					</view>
				</u-col>
			</u-row>
		</view>

		<view style="height: 10rpx;background-color: #efefef;"></view>

		<view style="background-color: #fff;">

			<view
				style="height: 92rpx;padding-left: 20rpx;padding-right: 20rpx;border-bottom: #efefef solid 2rpx;display: flex;font-size: 36rpx;">
				<span style="flex: 1;margin-left: 20rpx;line-height: 92rpx;">清除缓存</span>
				<span style="margin-right: 20rpx;line-height: 92rpx;">10MB</span>
				<u-icon name="arrow-right" />
			</view>

			<view
				style="height: 92rpx;padding-left: 20rpx;padding-right: 20rpx;border-bottom: #efefef solid 2rpx;display: flex;font-size: 36rpx;">

				<span style="flex: 1;margin-left: 20rpx;line-height: 92rpx;">关于我们</span>
				<span style="margin-right: 20rpx;line-height: 92rpx;">V1.0</span>
				<u-icon name="arrow-right" />
			</view>

			<view
				style="height: 92rpx;padding-left: 20rpx;padding-right: 20rpx;border-bottom: #efefef solid 2rpx;display: flex;font-size: 36rpx;">

				<span style="flex: 1;margin-left: 20rpx;line-height: 92rpx;">意见反馈</span>
				<u-icon name="arrow-right" />
			</view>

		</view>

		<view class="margin-top-xs" style="position: fixed;bottom: 0;left: 0;right: 0;height: 100rpx;">
			<view
				style="background-color: #0FD850;color: #fff;height: 100rpx;line-height: 100rpx;text-align: center;font-size: 36rpx;"
				@click="loginout()">
				退出登录
			</view>
		</view>

	</view>

</template>

<script>
	import request from '@/common/request.js';
	export default {
		data() {
			return {

			}
		},

		mounted() {

		},
		methods: {
			loginout() {

				let opts = {
					url: 'saas-hearts-service/api/custUser/logout',
					method: 'post'
				};
				uni.showLoading({
					title: '加载中'
				});
				request.httpRequestSaas(opts).then(res => {
					console.log(res);
					uni.hideLoading();
					if (res.statusCode == 200) {
						uni.removeStorageSync("token")
						uni.removeStorageSync("user")
						
						uni.navigateBack()

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
