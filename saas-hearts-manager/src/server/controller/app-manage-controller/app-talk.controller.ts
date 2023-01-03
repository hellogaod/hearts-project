import {requestType, appServiceName} from '~/server/enum.config'
/*
* 后台服务名称
*/
const CONTROLLER = 'custTalk'

export default {
  /**
   * 列表
   */
  getTalkList: {
    service: appServiceName,
    controller: CONTROLLER,
    action: 'getTalkList',
    type: requestType.Get
  },

  /**
   * app话题启用停用
   */
  updateStatus: {
    service: appServiceName,
    controller: CONTROLLER,
    action: 'updateTalk',
    type: requestType.Post
  },
}
