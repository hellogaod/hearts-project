/*
* app 评论管理 service
*/
import {appService} from '~/server/controller'
import {NetService} from '~/utils/net.service'
import {Inject, Debounce} from "~/core/decorator"
import {Service} from "~/server/service"

export class appCommentService extends Service {

  @Inject(NetService)
  private netService: NetService

  /**
   * 获取评论列表
   */
  @Debounce()
  getCommentList(data, page) {
    return this.netService.send({
      server: appService.appCommentController.getCommentList,
      data: data,
      page: page,
      loading: true
    })
  }


  /**
   * 评论启用停用
   */
  @Debounce()
  updateStatus({status, id}) {
    return this.netService.send({
      server: appService.appCommentController.updateStatus,
      data: {
        status: status,
        id: id
      },
      loading: true
    })
  }
}

