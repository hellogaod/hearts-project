import {requestType, appServiceName} from '~/server/enum.config'
/*
* 后台服务名称
*/
const CONTROLLER = 'custUser'

export default {
  /**
   * app用户列表
   */
  getList: {
    service: appServiceName,
    controller: CONTROLLER,
    action: 'getList',
    type: requestType.Get
  },

  /**
   * app用户启用停用
   */
  updateStatus: {
    service: appServiceName,
    controller: CONTROLLER,
    action: 'updateCustUserStatus',
    type: requestType.Post
  },
}
