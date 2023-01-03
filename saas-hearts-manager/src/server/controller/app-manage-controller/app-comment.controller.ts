import {requestType, commonServiceName, appServiceName} from '~/server/enum.config'
/*
* 后台服务名称
*/
const CONTROLLER = 'custComment'

export default {
  /**
   * 列表
   */
  getCommentList: {
    service: appServiceName,
    controller: CONTROLLER,
    action: 'getCommentList',
    type: requestType.Get
  },

  /**
   * app评论启用停用
   */
  updateStatus: {
    service: appServiceName,
    controller: CONTROLLER,
    action: 'updateStatus',
    type: requestType.Post
  },

}
