package com.app.saas.hearts.ui.talk

import android.util.Log
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.app.saas.hearts.api.HttpManage
import com.app.saas.hearts.entity.CustTalk
import com.app.saas.hearts.entity.PageInfo
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.Disposable
import io.reactivex.schedulers.Schedulers

class TalkViewModel : ViewModel() {

    private val _text = MutableLiveData<String>().apply {
        value = "This is talk Fragment"
    }
    val text: LiveData<String> = _text

    private val _talkPageInfo = MutableLiveData<PageInfo<CustTalk>>()
    val talkPageInfo: LiveData<PageInfo<CustTalk>> = _talkPageInfo

    val pageSize: Int = 10
    var pageIndex: Int = 1

    fun isLastPage(): Boolean {
        return _talkPageInfo.value?.isHasNextPage == true
    }


    fun getData(isRefresh: Boolean) {
        if (isRefresh) {
            pageIndex = 1
        } else {
            if (_talkPageInfo.value != null && _talkPageInfo.value?.isLastPage != null && _talkPageInfo.value?.isLastPage == true) {
                return
            }

            pageIndex++
        }


        HttpManage.getHttpCustTalkService().getTalkList(pageIndex, pageSize, -1)
            .subscribeOn(Schedulers.io())
            .observeOn(AndroidSchedulers.mainThread())
            .subscribe(object : io.reactivex.Observer<PageInfo<CustTalk>> {
                override fun onSubscribe(d: Disposable) {
                    Log.d("TAG", "onSubscribe")
                }

                override fun onNext(result: PageInfo<CustTalk>) {
                    _talkPageInfo.value = result
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