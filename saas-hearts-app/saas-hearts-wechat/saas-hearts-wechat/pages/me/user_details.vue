<!-- 用户主页 -->
<template>
	<view>

		<view>

			<view v-if="token != '' && token != undifined" class="wrap padding-xl" style="background-color: #fff;">
				<u-row gutter="16">
					<u-col span="3">
						<image src="../../static/icon_head_default.png" style="height: 120rpx;width: 120rpx;"></image>
					</u-col>
					<u-col span="9">
						<u-row gutter="16">
							<view style="text-align: center;font-size: 52rpx;">{{user.account}}
								<u-icon name="edit-pen-fill">
								</u-icon>
							</view>
						</u-row>
						<u-row>
							<u-col span="6">
								<u-row gutter="16">
									<view style="text-align: center;font-size: 42rpx;margin-top: 20rpx;">0%</view>
								</u-row>
								<u-row gutter="16">

									<view style="text-align: center;font-size: 42rpx;">用户满意度</view>
								</u-row>
							</u-col>
							<u-col span="6">
								<u-row gutter="16">
									<view style="text-align: center;font-size: 42rpx;margin-top: 20rpx;">0</view>
								</u-row>
								<u-row gutter="16">
									<view style="text-align: center;font-size: 42rpx;">收到的赞</view>

								</u-row>
							</u-col>
						</u-row>
					</u-col>


				</u-row>
			</view>
			<view style="height: 10rpx;background-color: #efefef;"></view>

			<view class="cu-card article no-card">
				<view class="shadow borderBottom" v-for="(item, index) in newsList" :key="index"
					@click="goNews(item.id)">
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
									<view class="text-gray light sm round"
										style="display: inline-flex;align-items:center;">
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


		</view>
	</view>
</template>

<script>
	import request from '@/common/request.js';
	export default {
		data() {
			return {
				user: '',
				token: '',
				newsList: '',
				// Custom: this.Custom,
				// CustomBar: this.CustomBar,
				spaceShow: true,
				modalName: null,
				picName: '流星之夜',
				pic: [{
					link: 'https://cdn.zhoukaiwen.com/zjx_me_bg1.jpeg',
					name: '春天'
				}, {
					link: 'https://cdn.zhoukaiwen.com/zjx_me_bg2.jpeg',
					name: '夏天'
				}, {
					link: 'https://cdn.zhoukaiwen.com/zjx_me_bg3.jpeg',
					name: '秋天'
				}, {
					link: 'https://cdn.zhoukaiwen.com/zjx_me_bg4.jpeg',
					name: '冬天'
				}, {
					link: 'https://cdn.zhoukaiwen.com/zjx_me_bg5.jpeg',
					name: '幽静'
				}, {
					link: 'https://cdn.zhoukaiwen.com/zjx_me_bg6.jpg',
					name: '天空'
				}],
				topBackGroupImageIndex: 5,
				inter: [{
					title: 'mimicry',
					name: '活力春天',
					color: ''
				}, {
					title: 'theme',
					name: '清爽夏日',
					color: ''
				}, {
					title: 'theme',
					name: '金秋之韵',
					color: ''
				}, {
					title: 'theme',
					name: '冬日之阳',
					color: ''
				}, {
					title: 'theme',
					name: '幽兰星空',
					color: ''
				}, {
					title: 'theme',
					name: '流星之夜',
					color: ''
				}]
			}
		},
		// 分享小程序
		onShareAppMessage(res) {
			return {
				title: '看看这个小程序多好玩～',
				imageUrl: 'https://cdn.zhoukaiwen.com/qdpz_share.jpg',
			};
		},
		watch: {
			topBackGroupImageIndex(val) {
				console.log(val)
				if (val == 4 || val == 5) {
					this.spaceShow = true;
				} else {
					this.spaceShow = false;
				}
			}
		},
		mounted() {
			this.getToken();
			this.getUser();
			this.geList();
			// 在页面中定义激励视频广告
			// let videoAd = null

			// 在页面onLoad回调事件中创建激励视频广告实例
			// if (wx.createRewardedVideoAd) {
			//   videoAd = wx.createRewardedVideoAd({
			//     adUnitId: 'adunit-5620518afa0bd171'
			//   })
			//   videoAd.onLoad(() => {})
			//   videoAd.onError((err) => {})
			//   videoAd.onClose((res) => {})
			// }
			// uni.showToast({
			//     title: '暂未开放,敬请期待',
			// 	icon: 'none',
			//     duration: 2000
			// });
		},
		methods: {
			getToken() {
				this.token = uni.getStorageSync("token");
				console.log("12")
			},
			getUser() {
				this.user = uni.getStorageSync("user");

				console.log("用户：" + JSON.stringify(this.user))
			},
			geList() {
				
				let opts = {
					url: 'saas-hearts-service/api/custTalk/getTalkList?pageIndex=1&pageSize=10&status=1',
					method: 'get'
				};
				uni.showLoading({
					title: '加载中'
				});
				request.httpRequestSaas(opts).then(res => {
					console.log(res);
					uni.hideLoading();
					if (res.statusCode == 200) {
						this.newsList = res.data.list;
						console.log(this.newsList);
					} else {
						console.log('数据请求错误～');
					}
				});
			},
			// playVideo(){
			// 	videoAd.show()
			// 	.catch(() => {
			// 	    videoAd.load()
			// 	    .then(() => videoAd.show())
			// 	    .catch(err => {
			// 	      console.log('激励视频 广告显示失败')
			// 	    })
			// 	})
			// },
			goUpdateUserInfo() {

				if (this.checkLogin()) {
					let user = uni.getStorageSync("user");
					uni.navigateTo({
						url: '../me/update_userinfo?id=' + user.userId,
					})
				}
			},
			goSetting() {
				if (this.checkLogin()) {
					let user = uni.getStorageSync("user");
					uni.navigateTo({
						url: '../setting/setting',
					})
				}
			},
			checkLogin() {

				if (this.token == '' || this.token == undefined || this.token == null) {
					uni.navigateTo({
						url: '../../tn_components/login/login',
					})
					return false;
				}
				return true;
			},
			getGitee() {
				uni.setClipboardData({
					data: 'https://gitee.com/kevin_chou',
					success: function() {
						console.log('success');
					}
				});
			},
			switchImage(index, name) {
				this.topBackGroupImageIndex = index;
				this.modalName = null;
				this.picName = name;
			},
			showModal(e) {
				this.modalName = e.currentTarget.dataset.target
			},
			showGitee(e) {
				this.modalName = e.currentTarget.dataset.target
			},
			hideModal(e) {
				this.modalName = null
			},

			// 答题测试
			mentalTest() {
				uni.navigateTo({
					url: '../me/mentalTest/list'
				})
			},
			//拨打固定电话
			callPhoneNumber() {
				uni.makePhoneCall({
					phoneNumber: "18629591093",
				});
			},
			goMedal() {
				uni.navigateTo({
					url: '../../tn_components/medal'
				})
			},
			// 关于作者
			goAboutMe() {
				uni.navigateTo({
					url: '../me/aboutMe'
				})
			},
			// 薪资排名
			// goSalary() {
			// 	uni.navigateTo({
			// 		url: '../me/salary'
			// 	})
			// },
			// // 课班信息
			// goCourse() {
			// 	uni.navigateTo({
			// 		url: '../me/course'
			// 	})
			// }
		}
	}
</script>

<style lang="scss" scoped>
	.UCenter-bg {
		background: #fff;
		background-size: 100% 100%;
		/* background-size: cover; */
		height: 550rpx;
		display: flex;
		justify-content: center;
		padding-top: 40rpx;
		overflow: hidden;
		position: relative;
		flex-direction: column;
		align-items: center;
		color: #fff;
		font-weight: 300;
		text-shadow: 0 0 3px rgba(0, 0, 0, 0.3);
	}

	.UCenter-bg text {
		opacity: 0.8;
	}

	.UCenter-bg image {
		width: 200rpx;
		height: 200rpx;
	}

	.UCenter-bg .gif-wave {
		position: absolute;
		width: 100%;
		bottom: 0;
		left: 0;
		z-index: 99;
		mix-blend-mode: screen;
		height: 100rpx;
	}


	// 头像
	.cu-avatar2 {
		font-variant: small-caps;
		margin: 0;
		padding: 0;
		display: inline-flex;
		text-align: center;
		justify-content: center;
		align-items: center;
		background: #ccc;
		color: #fff;
		white-space: nowrap;
		position: relative;
		width: 150rpx;
		height: 150rpx;
		background-size: cover;
		background-position: center;
		vertical-align: middle;
		font-size: 1.5em;
		z-index: 99;
	}

	.name {
		text-shadow: 2px 2px 1px #2f9bfe;
	}

	.dialog2 {
		background: none;
	}

	.saicode {
		background-size: 100% 100%;
		-moz-background-size: 100% 100%;
	}

	.img-big image {
		top: -40px;
		width: 280rpx;
		height: 280rpx;
	}


	.shadow-me {
		box-shadow: 0rpx 0rpx 100rpx 0rpx rgba(0, 0, 0, 0.1);
	}

	.tn-footerfixed {
		position: fixed;
		width: 100%;
		bottom: 0;
		z-index: 1024;
		box-shadow: 0 1rpx 6rpx rgba(0, 0, 0, 0.35);
	}

	.my_logo {
		background: none;
		padding: 50rpx 0 30rpx 0;
	}

	.my-radius {
		border-radius: 12rpx;
		overflow: hidden
	}

	.my-icon image {
		width: 100rpx;
		height: 100rpx;
		display: inline-block;
		margin: 0 auto
	}

	.my-iconcolor {
		background: rgba(255, 255, 255, 0.96)
	}

	.shadow-shop {
		box-shadow: 0rpx 0rpx 90rpx 0rpx rgba(0, 0, 0, 0.1);
	}

	.qrcode-img {
		position: fixed;
		width: 80rpx;
		height: 80rpx;
		bottom: 350rpx;
		right: 30rpx;
		z-index: 1024;
		opacity: 0.8;
		box-shadow: 0rpx 8rpx 30rpx 0rpx rgba(0, 0, 0, 0.3);
		border: none
	}


	/* 数字背景 */
	.shadow-warp-my {
		position: relative;
		box-shadow: 0 10rpx 10rpx rgba(0, 0, 0, 0.1);
	}

	.shadow-warp-my:before,
	.shadow-warp-my:after {
		position: absolute;
		content: "";
		top: 20rpx;
		bottom: 30rpx;
		left: 20rpx;
		width: 50%;
		box-shadow: 0 30rpx 20rpx rgba(0, 0, 0, 0.16);
		transform: rotate(-6deg);
		z-index: -1;
	}

	.shadow-warp-my:after {
		right: 20rpx;
		left: auto;
		transform: rotate(6deg);
	}


	.bg-product {
		background-image: linear-gradient(rgba(0, 0, 0, 0.06), rgba(0, 0, 0, 0));
		color: #fff;
	}

	.margin-bottom-my {
		margin-bottom: 150rpx;
	}

	.giteeClass {
		margin-top: 30rpx;
		font-size: 34rpx;
		color: #2440B3;
		text-decoration: underline;
	}

	.cu-dialog {
		background: #FFFFFF;
		overflow: visible;
	}

	.modal_bg {
		width: 100%;
		height: 400rpx;
		position: absolute;
		top: -100rpx;
		background-image: url(https://zhoukaiwen.com/img/qdpz/modal_bg.png);
		background-size: 100%;
		background-repeat: no-repeat;
	}

	.modal_main {
		background-color: #FFFFFF;
	}

	/* 主题色 */
	.bg-zt1 {
		color: #fff;
		background: #81d949;
	}

	.bg-zt2 {
		color: #fff;
		background: #b2e6ff;
	}

	.bg-zt3 {
		color: #fff;
		background: #f3cd41;
	}

	.bg-zt4 {
		color: #fff;
		background: #ddecf7;
	}

	.bg-zt5 {
		color: #fff;
		background: #152e9d;
	}

	.bg-zt6 {
		color: #fff;
		background: #0f1358;
	}

	.nav-list {
		display: flex;
		flex-wrap: wrap;
		padding: 0px 40upx 0px;
		justify-content: space-between;
	}

	.nav-li {
		padding: 22upx;
		border-radius: 12upx;
		width: 45%;
		margin: 0 2.5% 40upx;
		background-image: url(../../static/me/NyU04x.png);
		background-size: cover;
		background-position: center;
		position: relative;
		z-index: 1;
	}

	.nav-li::after {
		content: "";
		position: absolute;
		z-index: -1;
		background-color: inherit;
		width: 100%;
		height: 100%;
		left: 0;
		bottom: -10%;
		border-radius: 10upx;
		opacity: 0.2;
		transform: scale(0.9, 0.9);
	}

	.nav-li.cur {
		color: #fff;
		background: rgb(94, 185, 94);
		box-shadow: 4upx 4upx 6upx rgba(94, 185, 94, 0.4);
	}

	.nav-name {
		font-size: 28upx;
		text-transform: Capitalize;
		position: relative;
	}

	.nav-name::before {
		content: "";
		position: absolute;
		display: block;
		width: 40upx;
		height: 6upx;
		background: #fff;
		bottom: 0;
		right: 0;
		opacity: 0.5;
	}

	.nav-name::after {
		content: "";
		position: absolute;
		display: block;
		width: 100upx;
		height: 1px;
		background: #fff;
		bottom: 0;
		right: 40upx;
		opacity: 0.3;
	}

	.nav-name::first-letter {
		font-weight: bold;
		font-size: 36upx;
		margin-right: 1px;
	}

	.nav-li text {
		position: absolute;
		right: 30upx;
		top: 30upx;
		font-size: 52upx;
		width: 60upx;
		height: 60upx;
		text-align: center;
		line-height: 60upx;
	}

	// 好玩动态
	.dong {
		z-index: 9999;
		position: fixed;
		top: -40px;
		right: -80px;
		transform: scale(0.24);
		-webkit-transform: scale(0.24);
		-moz-transform: scale(0.24);

	}

	.monster {
		transform: rotate(-50deg);
		-ms-transform: rotate(-50deg);
		/* IE 9 */
		-moz-transform: rotate(-50deg);
		/* Firefox */
		-webkit-transform: rotate(-50deg);
		/* Safari 和 Chrome */
		-o-transform: rotate(-50deg);
		/* Opera */
		display: flex;
		justify-content: center;
		position: relative;
		width: 170px;
		height: 400px;
		border-top-left-radius: 200px;
		border-top-right-radius: 200px;
		background-color: #3C47D7;
		box-shadow: 20px 20px 60px #4650E5;
	}

	.monster__face {
		display: flex;
		justify-content: center;
		align-items: center;
		flex-direction: column;
		position: absolute;
		top: 14%;
		width: 75%;
		height: 160px;
	}

	.monster__noses {
		top: 50%;
		display: flex;
		justify-content: space-between;
		width: 28%;
		height: auto;
		margin-bottom: 10px;
	}

	.monster__nose {
		width: 8px;
		height: 12px;
		border-radius: 20px;
		background: rgba(0, 0, 0, 0.5);
		box-shadow: 4px 8px 5px rgba(0, 0, 0, 0.1);
	}

	.monster__mouth {
		display: flex;
		justify-content: center;
		align-items: center;
		position: relative;
		width: 100%;
		height: 0%;
		overflow: hidden;
		border: 25px solid #FFC333;
		border-radius: 100px;
		background-color: #810332;
		animation: mouth 1.75s infinite;
		box-shadow: 4px 8px 5px rgba(0, 0, 0, 0.2);
		box-sizing: border-box;
	}

	.monster__mouth::before {
		content: '';
		position: absolute;
		width: 150px;
		height: 80px;
		border-radius: 100px;
		background-color: #400018;
	}

	.monster__mouth::after {
		content: '';
		position: absolute;
		bottom: -80px;
		width: 160px;
		height: 80px;
		border-top-left-radius: 50%;
		border-top-right-radius: 50%;
		background-color: #DC1B50;
		animation: tongue 1.75s infinite;
	}

	.monster__top {
		position: absolute;
		top: -30px;
		width: 170px;
		height: 30px;
		border-bottom-left-radius: 10px;
		border-bottom-right-radius: 10px;
		background-color: #ffffff;
		z-index: 100;
		animation: t 1.75s infinite;
	}

	.monster__bottom {
		position: absolute;
		bottom: 0;
		width: 100px;
		height: 30px;
		border-top-left-radius: 10px;
		border-top-right-radius: 10px;
		background-color: #ffffff;
		z-index: 100;
		animation: b 1.75s infinite;
	}


	.avatar-eye {
		position: absolute;
		top: -10%;
		width: 65px;
		height: 65px;
		background: linear-gradient(105deg, white, #cb87f4);
		border-radius: 100%;
		box-shadow: 4px 8px 5px rgba(0, 0, 0, 0.2);
		margin: 3px;
		-webkit-transform: translateX(-50%);
		transform: translateX(-50%);
	}


	.avatar-eye--green {
		background: linear-gradient(to bottom, #fdfdfd, #c3efea);
	}

	.avatar-eye--violet {
		background: linear-gradient(to bottom, #fdfdfd, #e6d6f6);
	}


	.eye--left {
		left: 10%;
	}

	.eye--right {
		left: 85%;
	}

	.eye--center {
		left: 45%;
		top: 10%;
	}

	.avatar-eye-pupil {
		position: absolute;
		width: 55%;
		height: 55%;
		left: 50%;
		top: 25%;
		-webkit-transform: translate(-50%);
		transform: translate(-50%);
		z-index: 100;
		border-radius: 100%;
	}


	.pupil--green {
		background: linear-gradient(135deg, rgba(188, 248, 177, 0.7), #2fa38c 75%);
	}

	.pupil--pink {
		background: linear-gradient(135deg, #f1a183, #8535cd);
	}


	.avatar-eye-pupil-blackThing {
		position: absolute;
		width: 55%;
		height: 55%;
		left: 50%;
		top: 25%;
		background: #2c2f32;
		-webkit-transform: translate(-50%);
		transform: translate(-50%);
		border-radius: 100%;
		box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
	}

	.avatar-eye-pupil-lightReflection {
		position: absolute;
		width: 7px;
		height: 7px;
		left: 25%;
		top: 10%;
		background: #ebebeb;
		-webkit-transform: translate(-50%);
		transform: translate(-50%);
		border-radius: 100%;
		box-shadow: 10px 10px 10px rgba(255, 255, 255, 0.2);
	}

	/**/
	@keyframes t {

		0%,
		10%,
		80%,
		100% {
			top: -30px;
		}

		20% {
			top: 0px;
		}

		30% {
			top: -20px;
		}

		40% {
			top: -0px;
		}

		50% {
			top: -25px;
		}

		70% {
			top: 0px;
		}
	}

	@keyframes b {

		0%,
		10%,
		80%,
		100% {
			bottom: -30px;
		}

		20% {
			bottom: 0px;
		}

		30% {
			bottom: -20px;
		}

		40% {
			bottom: -0px;
		}

		50% {
			bottom: -25px;
		}

		70% {
			bottom: 0px;
		}
	}

	@keyframes mouth {

		0%,
		10%,
		100% {
			width: 100%;
			height: 0%;
		}

		15% {
			width: 90%;
			height: 30%;
		}

		20% {
			width: 50%;
			height: 70%;
		}

		25% {
			width: 70%;
			height: 70%;
		}

		30% {
			width: 80%;
			height: 60%;
		}

		35% {
			width: 60%;
			height: 70%;
		}

		40% {
			width: 55%;
			height: 75%;
		}

		45% {
			width: 50%;
			height: 90%;
		}

		50% {
			width: 40%;
			height: 70%;
		}

		55% {
			width: 70%;
			height: 95%;
		}

		60% {
			width: 40%;
			height: 50%;
		}

		65% {
			width: 100%;
			height: 60%;
		}

		70% {
			width: 100%;
			height: 70%;
		}

		75% {
			width: 90%;
			height: 70%;
		}

		80% {
			width: 50%;
			height: 70%;
		}

		85% {
			width: 90%;
			height: 50%;
		}

		85% {
			width: 40%;
			height: 70%;
		}

		90% {
			width: 90%;
			height: 30%;
		}

		95% {
			width: 100%;
			height: 10%;
		}
	}

	@keyframes tongue {

		0%,
		20%,
		100% {
			bottom: -80px;
		}

		30%,
		90% {
			bottom: -40px;
		}

		40% {
			bottom: -45px;
		}

		50% {
			bottom: -50px;
		}

		70% {
			bottom: -80px;
		}

		90% {
			bottom: -40px;
		}
	}


	// 顶部流星
	.space {
		position: absolute;
		top: 0;
		left: 0;
	}

	.planet {
		width: 150rpx;
		height: 150rpx;
		border-radius: 50%;
		background: #333;
		position: absolute;
		left: 50%;
		top: 50%;
		margin: -75rpx 0 0 -75rpx;
		overflow: hidden;
		z-index: 2;
	}

	.planet_shadow {
		position: absolute;
		border-radius: 50%;
		height: 100%;
		width: 100%;
		top: -40%;
		right: -10%;
		border: 35rpx solid rgba(0, 0, 0, .15);
	}

	.star {
		display: block;
		width: 5rpx;
		height: 5rpx;
		border-radius: 50%;
		background: #FFF;
		top: 100rpx;
		left: 400rpx;
		position: relative;
		transform-origin: 100% 0;
		animation: star-ani 6s infinite ease-out;
		box-shadow: 0 0 5rpx 5rpx rgba(255, 255, 255, .3);
		opacity: 0;
		z-index: 2;
	}

	.star:after {
		content: '';
		display: block;
		top: 0rpx;
		left: 4rpx;
		border: 0rpx solid #fff;
		border-width: 0rpx 90rpx 2rpx 90rpx;
		border-color: transparent transparent transparent rgba(255, 255, 255, .3);
		transform: rotate(-45deg) translate3d(1rpx, 3rpx, 0);
		box-shadow: 0 0 1rpx 0 rgba(255, 255, 255, .1);
		transform-origin: 0% 100%;
		animation: shooting-ani 3s infinite ease-out;
	}

	.pink {
		top: 30rpx;
		left: 395rpx;
		background: #ff5a99;
		animation-delay: 5s;
		-webkit-animation-delay: 5s;
		-moz-animation-delay: 5s;
	}

	.pink:after {
		border-color: transparent transparent transparent #ff5a99;
		animation-delay: 5s;
		-webkit-animation-delay: 5s;
		-moz-animation-delay: 5s;
	}

	.blue {
		top: 35rpx;
		left: 432rpx;
		background: cyan;
		animation-delay: 7s;
		-webkit-animation-delay: 7s;
		-moz-animation-delay: 7s;
	}

	.blue:after {
		/* border-color: transpareanimation-delay: 12s; */
		-webkit-animation-delay: 7s;
		-moz-animation-delay: 7s;
		animation-delay: 7s;
	}

	.yellow {
		top: 50rpx;
		left: 600rpx;
		background: #ffcd5c;
		animation-delay: 5.8s;
	}

	.yellow:after {
		border-color: transparent transparent transparent #ffcd5c;
		animation-delay: 5.8s;
	}

	@keyframes star-ani {
		0% {
			opacity: 0;
			transform: scale(0) rotate(0) translate3d(0, 0, 0);
			-webkit-transform: scale(0) rotate(0) translate3d(0, 0, 0);
			-moz-transform: scale(0) rotate(0) translate3d(0, 0, 0);
		}

		50% {
			opacity: 1;
			transform: scale(1) rotate(0) translate3d(-200rpx, 200rpx, 0);
			-webkit-transform: scale(1) rotate(0) translate3d(-200rpx, 200rpx, 0);
			-moz-transform: scale(1) rotate(0) translate3d(-200rpx, 200rpx, 0);
		}

		100% {
			opacity: 0;
			transform: scale(1) rotate(0) translate3d(-300rpx, 300rpx, 0);
			-webkit-transform: scale(1) rotate(0) translate3d(-300rpx, 300rpx, 0);
			-moz-transform: scale(1) rotate(0) translate3d(-300rpx, 300rpx, 0);
		}
	}
	
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
