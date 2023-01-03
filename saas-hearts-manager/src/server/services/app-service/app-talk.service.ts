/*
* app 话题管理 service
*/
import {appService} from '~/server/controller'
import {NetService} from '~/utils/net.service'
import {Inject, Debounce} from "~/core/decorator"
import {Service} from "~/server/service"

export class entTalkService extends Service {

  @Inject(NetService)
  private netService: NetService

  /**
   * 获取话题列表
   */
  @Debounce()
  getTalkList(data, page) {
    return this.netService.send({
      server: appService.appTalkController.getTalkList,
      data: data,
      page: page,
      loading: true
    })
  }


  /**
   * 话题启用停用
   */
  @Debounce()
  updateStatus({status, id}) {
    return this.netService.send({
      server: appService.appTalkController.updateStatus,
      data: {
        status: status,
        id: id
      },
      loading: true
    })
  }
}

