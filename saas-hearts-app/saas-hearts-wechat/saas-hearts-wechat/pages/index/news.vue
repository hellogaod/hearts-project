<!-- TabBar 文章资讯 -->
<template>
	<view>
		<cu-custom bgColor="bg-gradual-blue" :isBack="false">
			<block slot="content">语录</block>
		</cu-custom>

		<view
			style="padding-left: 20rpx;padding-right:20rpx;line-height:90rpx;height:90rpx;position:fixed;right: 0;z-index: 999;"
			@click="createTalk()">
			创建
		</view>

		<scroll-view scroll-x class="bg-white nav" scroll-with-animation :scroll-left="scrollLeft"
			style="text-align: center;background-color: #fff;height: 90rpx;">
			<view class="cu-item" :class="index == TabCur?'text-blue cur':''" v-for="(item,index) in navTop"
				:key="index" @tap="tabSelect" :data-id="index">
				{{item.title}}
			</view>

		</scroll-view>

		<view class="cu-card article no-card">
			<view class="shadow borderBottom" v-for="(item, index) in newsList" :key="index" @click="goNews(item.id)">
				<view class="header">
					<img src="../../static/icon_head_default.png" />
					<span>{{item.createUserName}}</span>
					<span style="float: right;">{{item.createTime | formatDate}}</span>
				</view>
				<view class="line"></view>
				<view class="u-demo-block__content">
					<u-row justify="space-between" customStyle="margin-bottom: 10px">
						<u-col span="3">
							<view class="demo-layout bg-purple-light"></view>
						</u-col>
						<u-col span="3">
							<view class="demo-layout bg-purple"></view>
						</u-col>
					</u-row>

				</view>
				<view class="title margin-top-sm">
					<view class="text-cut text-bold text-lg">{{item.title}}</view>
				</view>
				<view class="content margin-top-sm">
					<view class="desc">
						<view class="text-content">{{item.content}}</view>
						<view class="margin-top-xs">
							<view class="text-gray light sm text-df round fl">{{item.createdAt | formatDate}}</view>
							<view>
								<view class="text-gray light sm round margin-lr-xs"
									style="display: inline-flex;align-items:center;">

									<img src="../../static/icon_like.png" />
									<text class="text-df" style="margin-top: 2rpx;">{{item.satisfaceRate}}%</text>
								</view>
								<view class="text-gray light sm round margin-lr-xs"
									style="display: inline-flex;align-items:center;">
									<img src="../../static/icon_praise.png" />
									<text class="text-df" style="margin-top: 2rpx;">{{item.praiseCount}}</text>
								</view>
								<view class="text-gray light sm round" style="display: inline-flex;align-items:center;">
									<img src="../../static/icon_comment.png" />
									<text class="text-df" style="margin-top: 2rpx;">{{item.commentCount}}</text>
								</view>
							</view>
						</view>
					</view>
				</view>
			</view>


			<view class="page-box" v-if="newsList.length < 1">
				<view>
					<view class="centre">
						<image src="https://cos.qhskis.com/kevin_7ny/noData1.png" mode="widthFix"></image>
						<view class="explain">
							暂无数据
							<view class="tips">可以去看看有其他</view>
						</view>
						<!-- <view class="btn">随便逛逛</view> -->
					</view>
				</view>
			</view>
		</view>

		<view style="width: 1rpx;height: 150rpx;"></view>

	</view>
</template>

<script>
	import request from '@/common/request.js';
	export default {
		data() {
			return {
				requestStatus: false, // 事件防抖
				TabCur: 0,
				scrollLeft: 0,
				newsList: '',
				navTop: [{
						id: 1,
						title: '最新'
					},
					{
						id: 2,
						title: '热门'
					},

				]
			};
		},
		onShow() {
			
			uni.$on("refresh", (e) => {
				this.getData(); //需要重新访问一下接口。
			})
		}, 
		// 用这种方法需要清除，负责会一直调用多次接口
		onLoad() {
			console.log("onshow")
			// 清除监听
			uni.$off('refresh');
		},
		mounted() {
			this.getData();
		},
		filters: {
			formatDate(value) {
				if (value == undefined) {
					return;
				}
				// let date = new Date(value * 1000);
				let date = new Date(value);
				//时间戳为10位需*1000，时间戳为13位的话不需乘1000
				let y = date.getFullYear();
				let MM = date.getMonth() + 1;
				MM = MM < 10 ? ('0' + MM) : MM; //月补0
				let d = date.getDate();
				d = d < 10 ? ('0' + d) : d; //天补0
				let h = date.getHours();
				h = h < 10 ? ('0' + h) : h; //小时补0
				let m = date.getMinutes();
				m = m < 10 ? ('0' + m) : m; //分钟补0
				let s = date.getSeconds();
				s = s < 10 ? ('0' + s) : s; //秒补0
				// return y + '-' + MM + '-' + d; //年月日	 + ' ' + h + ':' + m
				return y + '-' + MM + '-' + d; //年月日时分秒
			}
		},
		methods: {
			getData() {
				var type = this.navTop[this.TabCur].id;
				console.log(type)
				if (type == 1) {
					type = '';
				}
				let opts = {
					url: 'saas-hearts-service/api/custTalk/getTalkList?pageIndex=1&pageSize=10&status=1',
					method: 'get'
				};
				uni.showLoading({
					title: '加载中'
				});
				request.httpRequestSaas(opts).then(res => {
					// console.log(res);
					uni.hideLoading();
					if (res.statusCode == 200) {
						this.newsList = res.data.list;
						console.log(this.newsList);
					} else {
						console.log('数据请求错误～');
					}
				});
			},
			tabSelect(e) {
				this.TabCur = e.currentTarget.dataset.id;
				this.scrollLeft = (e.currentTarget.dataset.id - 1) * 60;
				if (this.requestStatus) { // 时间防抖：利用 return 终止函数继续运行
					return false;
				};
				this.requestStatus = true;
				setTimeout(() => {
					this.getData();
					this.requestStatus = false; // 模拟执行完毕，改变 requestStatus
				}, 300);

			},
			goNews(id) {
				uni.navigateTo({
					url: '../news/news?id=' + id,
				})
			},
			createTalk() {
				uni.getStorage({

					key: 'token',
					success: function(data) {
						uni.navigateTo({
							url: '../news/create-talk',
						})
					},
					fail() {
						uni.navigateTo({
							url: '../../tn_components/login/login',
						})
					}

				})

			}
		}
	}
</script>

<style lang="scss" scoped>
	.borderBottom {
		border-bottom: 1px solid #f2f2f2;
		margin-left: 10px;
		margin-right: 10px;
		margin-top: 10px;
		background-color: #efefef;
		border-radius: 5px;
		padding: 10px;

		.line {
			border-top-width: 1px;
			border-bottom-width: 1px;
			border-top-color: #d2d2d2;
			border-left-width: 0px;
			border-right-width: 0px;
			border-bottom-color: #fff;
			border-style: solid;
		}

		.content {
			image {
				width: 30rpx;
				height: 30rpx;
			}
		}
	}

	.header {
		height: 40px;
		line-height: 40px;

		image {
			vertical-align: middle;
			width: 50rpx;
			margin-right: 10px;
			height: 50rpx;
		}

	}

	// 暂无数据
	.centre {
		text-align: center;
		margin: 200rpx auto;
		font-size: 32rpx;

		image {
			width: 300rpx;
			border-radius: 50%;
			margin: 0 auto;
		}

		.tips {
			font-size: 24rpx;
			color: #999999;
			margin-top: 20rpx;
		}

		.btn {
			margin: 80rpx auto;
			width: 200rpx;
			border-radius: 32rpx;
			line-height: 64rpx;
			color: #ffffff;
			font-size: 26rpx;
			background: linear-gradient(270deg, #1cbbb4 0%, #0081ff 100%);
		}
	}

	.nav .cu-item.cur {
		font-weight: 600;
	}
</style>
