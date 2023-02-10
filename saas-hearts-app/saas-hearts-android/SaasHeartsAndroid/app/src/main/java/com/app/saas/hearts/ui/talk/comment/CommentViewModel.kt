package com.app.saas.hearts.ui.talk.comment

import android.util.Log
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.app.saas.hearts.api.HttpManage
import com.app.saas.hearts.entity.CustComment
import com.app.saas.hearts.entity.PageInfo
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.Disposable
import io.reactivex.schedulers.Schedulers

class CommentViewModel : ViewModel() {

    private var talkId: String? = null

    private val _text = MutableLiveData<String>().apply {
        value = "This is comment Fragment"
    }
    val text: LiveData<String> = _text

    private val _commentPageInfo = MutableLiveData<PageInfo<CustComment>>()
    val commentPageInfo: LiveData<PageInfo<CustComment>> = _commentPageInfo

    val pageSize: Int = 10
    var pageIndex: Int = 1

    fun isLastPage(): Boolean {
        return _commentPageInfo.value?.isHasNextPage == true
    }

    fun setTalkId(talkId: String) {
        this.talkId = talkId
    }


    fun getData(isRefresh: Boolean) {
        if (isRefresh) {
            pageIndex = 1
        } else {
            if (_commentPageInfo.value != null && _commentPageInfo.value?.isLastPage != null && _commentPageInfo.value?.isLastPage == true) {
                return
            }

            pageIndex++
        }

        HttpManage.getHttpCustCommentService().getCommentList(pageIndex, pageSize, talkId, 1)
            .subscribeOn(Schedulers.io())
            .observeOn(AndroidSchedulers.mainThread())
            .subscribe(object : io.reactivex.Observer<PageInfo<CustComment>> {
                override fun onSubscribe(d: Disposable) {
                    Log.d("TAG", "onSubscribe")
                }

                override fun onNext(result: PageInfo<CustComment>) {
                    _commentPageInfo.value = result
                }

                override fun onError(e: Throwable) {
                    Log.e("TAG", "请求失败" + e.message)
                }

                override fun onComplete() {
                    Log.d("TAG", "请求完成")
                }
            })
    }
}