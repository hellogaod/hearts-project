<!-- 新闻 详情 -->
<template>
	<view class="container">
		<cu-custom bgColor="bg-gradual-blue" :isBack="true">
			<block slot="backText"></block>
			<block slot="content">话题详情</block>
		</cu-custom>

		<view v-if="newsData.title">
			<view style="background-color: #FFFFFF;padding: 30rpx 30rpx 30rpx 30rpx;">
				<view class="titleBox text-xl text-black text-bold">{{newsData.title}}</view>
				
				<view class="contentBox text-lg text-black margin-top-sm margin-tb-lg">
					<view class="margin-top-sm">
						{{newsData.content}}
					</view>
				</view>
				<view>
					<u-row>
						<u-col span="6">
							<view>
								<u-row>
									<u-col span="3">
										<view>
											<image class="header-img" src="../../static/icon_head_default.png"/>
										</view>
									</u-col>
									<u-col span="9">
										<view>
											<u-row>
												<u-col span="12">
													<view>
														{{newsData.createUserName}}
													</view>
												</u-col>
											</u-row>
											<u-row>
												<u-col span="12">
													<view>
														{{newsData.createTime | formatDate}}
													</view>
												</u-col>
											
											</u-row>
										</view>
									</u-col>
								</u-row>
								
							</view>
						</u-col>
						<u-col span="6">
							<!-- 浏览、点赞、分享数 -->
							<view class="text-right text-df text-gray margin-top-sm margin-bottom-sm">
								<u-icon name="heart-fill"></u-icon>
								<!-- <text class="text-gray cuIcon-attentionfill text-df" style="margin-right: 6rpx;"></text> -->
								<text class="text-df margin-right-sm" style="margin-top: 2rpx;">{{newsData.satisfaceRate}}%</text>
								<u-icon name="thumb-up-fill"></u-icon>
								<!-- <text class="text-gray cuIcon-appreciatefill text-df" style="margin-right: 6rpx;"></text> -->
								<text class="text-df margin-right-sm" style="margin-top: 2rpx;">{{newsData.praiseCount}}</text>
								<!-- <text class="text-gray cuIcon-share text-df" style="margin-right: 6rpx;"></text> -->
								<u-icon name="chat-fill"></u-icon>
								<text class="text-df" style="margin-top: 2rpx;">{{newsData.commentCount}}</text>
							</view>
						</u-col>
					</u-row>
				</view>
				
			
				<!-- <view class="text-center text-dflg text-grey margin-top-sm margin-bottom-sm">
					作者：{{newsData.author}}
				</view> -->
				
				<!-- <view class="flex justify-between text-df text-gray margin-top-sm margin-bottom-sm">
					<text>{{newsData.createdAt | formatDate}}</text>
					<text>{{newsData.type | typeF}}</text>
				</view>
				<image mode="widthFix" :src="newsData.img"></image> -->

				
			</view>	<!-- 
			<view class="cu-bar justify-left bg-white margin-top-sm">
				<view class="action border-title">
					<text class="text-lg text-bold text-blue">图片展示</text>
					<text class="bg-gradual-blue" style="width:3rem"></text>
				</view>
			</view> -->
			
		</view>

		<view style="margin: 25rpx 0 100rpx 0;">
			<!-- <view class="cu-bar justify-left bg-white">
				<view class="action border-title">
					<text class="text-lg text-bold text-blue">评论</text>
					<text class="bg-gradual-blue" style="width:3rem"></text>
				</view>
			</view> -->

			<!-- <view class="text-lg text-bold text-center margin-bottom-lg">暂无评论</view> -->

			<view class="cu-list menu-avatar comment solids-top">
				<view class="cu-item"  v-for="(item, index) in commentList" :key="index">
					<view class="cu-avatar round" style="background-image:url(../../static/icon_head_default.png);">
					</view>
					<view class="content">
						<view class="text-grey">{{item.createUserName}}</view>
						<view class="text-gray text-content text-df">
							{{item.createTime | formatDate}}
						</view>
						<view class="line"></view>
						<view class="margin-top-xs flex justify-between">
							<view class="text-gray text-df">{{item.content}}</view>
						</view>
					</view>
				</view>
			</view>
		</view>

		<view class="cu-bar bg-white tabbar border shop bottomBox" style="display: flex;">
			<!-- <button class="action" open-type="share">
				<view class="cuIcon-share text-green">
					<view class="cu-tag badge">{{newsData.commentNum}}</view>
				</view>
				分享
			</button> -->
			<u-input v-model="commentContent" style="margin-left: 10px; margin-right: 10px;background-color: #efefef;flex: 1;padding-left: 5px;padding-right: 5px;"/>
			<button class="action" open-type="contact">
				<view class="text-green">
					<view class="badge"></view>
				</view>
				发布
			</button>
			<!-- <view class="btn-group">
				<button style="width: 80%;height: 70rpx;" @click="praiseClick(newsData.id)"
					class="cu-btn bg-gradual-blue round shadow-blur">
					<view class="cuIcon-appreciatefill text-white margin-right-xs"></view>
					赞一下吧
				</button>
			</view> -->
		</view>
		<view class="safe-area-inset-bottom"></view>
	</view>
</template>

<script>
	import request from '@/common/request.js';
	export default {
		data() {
			return {
				newsData: [],
				commentList: '',
				commentContent:'',
				requestStatus: false // 事件防抖
			}
		},
		onLoad(option) {
			console.log(option)
			this.getData(option.id);
			this.getCommentList(option.id)
		},
		// 分享小程序
		// onShareAppMessage(res) {
		// 	return {
		// 		title: this.newsData.title,
		// 		imageUrl: this.newsData.img,
		// 		path: '/pages/index/tabbar'
		// 	};
		// },
		onShareTimeline() {
			return {
				title: '「前端铺子」技术 # 案例 # 学习 # 提升，开发者者的聚集地！',
				imageUrl: 'https://cdn.zhoukaiwen.com/qdpz_share.jpg',
			}
		},
		methods: {
			// 话题详情
			getData(id) {
				console.log(id);
				uni.showLoading({
					title: '加载中'
				});
				let opts = {
					url: 'saas-hearts-service/api/custTalk/getTalkDetail?talkId=' + id,
					method: 'get'
				};
				request.httpRequestSaas(opts).then(res => {
					console.log(res);
					uni.hideLoading();
					if (res.data) {
						this.newsData = res.data;
					} else {
						console.log('数据请求错误～');
					}
				});
			},
			getCommentList(id) {
				
				let opts = {
					url: 'saas-hearts-service/api/custComment/getCommentList?pageIndex=1&pageSize=10&status=1&talkId=' + id,
					method: 'get'
				};
				uni.showLoading({
					title: '加载中'
				});
				request.httpRequestSaas(opts).then(res => {
					// console.log(res);
					uni.hideLoading();
					if (res.statusCode == 200) {
						this.commentList = res.data.list;
						console.log(this.commentList);
					} else {
						console.log('数据请求错误～');
					}
				});
			},
			// 点赞
			praiseClick(id) {
				console.log(id);
				if (this.requestStatus) { // 时间防抖：利用 return 终止函数继续运行
					return false;
				};
				this.requestStatus = true;
				uni.showLoading({
					title: '加载中'
				});
				let opts = {
					url: 'api/blog/like?id=' + id,
					method: 'get'
				};
				request.httpRequest(opts).then(res => {
					console.log(res);
					uni.hideLoading();
					if (res.data.code == 200) {
						this.newsData.likesNum++;
						uni.showToast({
							title: '点赞成功！感谢参与',
							duration: 2000
						});
						setTimeout(() => {
							// 模拟执行完毕，改变 requestStatus
							this.requestStatus = false;
						}, 2500);
					} else {
						console.log('数据请求错误～');
					}
				});
			},
			previewImage(index) {
				// 预览功能需要数组格式，具体查看uniapp文档：previewImage
				const seeImgList = this.newsData.imgList.split(',')
				uni.previewImage({
					current: index, //预览图片的下标
					urls: seeImgList //预览图片的地址，必须要数组形式，如果不是数组形式就转换成数组形式就可以
				})
			},
			onShareAppMessage (options) {
				// 自定义分享内容
				var shareObj = {
					title: this.newsData.title, // 小程序的名称
					path: '/pages/index/tabbar', // 默认是当前页面，必须是以‘/’开头的完整路径
					imageUrl: this.newsData.img //自定义图片路径，支持PNG及JPG，不传入 imageUrl 则使用默认截图。显示图片长宽比是 5:4
				};
				// 来自页面内的按钮的转发
				if (options.from == 'button') {
					console.log("来源于button");
					// 此处可以修改 shareObj 中的内容
					// shareObj.path = '/pages/xxx/xxx?id='id;
					this.shareFun(this.newsData.id)
				}
				// 返回shareObj
				return shareObj;
			},
			// 分享接口
			shareFun(id){
				console.log(id);
				uni.showLoading({
					title: '加载中'
				});
				let opts = {
					url: 'api/blog/share?id=' + id,
					method: 'get'
				};
				request.httpRequest(opts).then(res => {
					console.log(res);
					uni.hideLoading();
					if (res.data.code == 200) {
						this.newsData.commentNum++;
					} else {
						console.log('数据请求错误～');
					}
				});
			}
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
				
				let strDate = y + '-' + MM + '-' + d + ' ' + h + ':' + m;
				// return y + '-' + MM + '-' + d; //年月日
				console.log('strDate:' + strDate);
				return strDate; //年月日时分秒
			},
			typeF(value) {
				if (!value) {
					return;
				}
				if (value == 2) {
					return 'web前端'
				}
				if (value == 3) {
					return 'ui设计'
				}
				if (value == 4) {
					return 'Node后端'
				}
				if (value == 5) {
					return '面试精选'
				}
				if (value == 6) {
					return '技术前沿'
				}
				if (value == 7) {
					return '更多资讯'
				}
			}
		}
	}
</script>

<style lang="scss" scoped>
	button::after {
		border: none;
		background: transparent;
	}

	uni-button {
		background: transparent;
	}
	
	.header-img{
		width: 27px;
		height: 27px;
	}
	
	.line{
		border-top-width: 1px ;
		border-bottom-width: 1px;
		border-top-color: #d2d2d2;
		border-left-width: 0px;
		border-right-width: 0px;
		border-bottom-color:#fff;
		border-style: solid;
	}
	
	.cu-item{
		border-bottom: 1px solid #f2f2f2;
		margin-left: 10px;
		margin-right: 10px;
		margin-top: 10px;
		background-color: #efefef;
		border-radius: 5px;
		padding: 10px;
	}
	
	.contentBox{
		padding-bottom: 10px;
		border-bottom: 1px #d2d2d2 solid;
	}

	.container {
		background-color: #f2f2f2;
		width: 750rpx;

	}

	.solid {
		border-radius: 50rpx;
		text-indent: 12rpx;
	}

	image {
		width: 750rpx;
	}

	.bottomBox {
		width: 750rpx;
		position: fixed;
		left: 0;
		bottom: 0rpx;
	}
</style>
