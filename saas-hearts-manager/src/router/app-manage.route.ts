//app用户管理端
const AppCustomerManage = () => import('~/pages/enterprise-manage/custom-logic/app-customer.vue')//app用户管理
const AppTalkManage = () => import('~/pages/enterprise-manage/custom-logic/app-talk.vue')//app用户管理
const AppCommentManage = () => import('~/pages/enterprise-manage/custom-logic/app-comment.vue')//app用户管理


export default [
  {
    path: '/app-manage/customer',
    name: 'appCustomerManage',
    component: AppCustomerManage
  },
  {
    path: '/app-manage/talk',
    name: 'appTalkManage',
    component: AppTalkManage
  },
  {
    path: '/app-manage/comment',
    name: 'appCommentManage',
    component: AppCommentManage
  },

]
