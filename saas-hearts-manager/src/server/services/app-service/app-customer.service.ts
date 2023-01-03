/*
* app 用户管理 service
*/
import {appService} from '~/server/controller'
import {NetService} from '~/utils/net.service'
import {Inject, Debounce} from "~/core/decorator"
import {Service} from "~/server/service"

export class entCustomerService extends Service {

  @Inject(NetService)
  private netService: NetService

  /**
   * 获取用户列表
   */
  @Debounce()
  getCustomerList(data, page) {
    return this.netService.send({
      server: appService.appCustomerController.getList,
      data: data,
      page: page,
      loading: true
    })
  }


  /**
   * 用户启用停用
   */
  @Debounce()
  updateStatus({status, id}) {
    return this.netService.send({
      server: appService.appCustomerController.updateStatus,
      data: {
        status: status,
        id: id
      },
      loading: true
    })
  }
}

