package com.app.saas.hearts.ui.talk

import android.util.Log
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.app.saas.hearts.api.HttpManage
import com.app.saas.hearts.entity.*
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.Disposable
import io.reactivex.schedulers.Schedulers

class TalkDetailsViewModel : ViewModel() {

    private val _text = MutableLiveData<String>().apply {
        value = "This is talk details Activity"
    }
    val text: LiveData<String> = _text

    var talkId:String? = null

    private val _createFlag = MutableLiveData<Boolean>()
    val createFlag: LiveData<Boolean> = _createFlag

    private val _custTalk = MutableLiveData<CustTalk>()
    val custTalk: LiveData<CustTalk> = _custTalk

    //新建评论
    fun createComment(token:String,content: String) {
        val custComment = CustComment()
        custComment.content = content
        custComment.talkId = talkId

        HttpManage.getHttpCustCommentService().addComment(token,custComment)
            .subscribeOn(Schedulers.io())
            .observeOn(AndroidSchedulers.mainThread())
            .subscribe(object : io.reactivex.Observer<ResponseDate<Any>> {
                override fun onSubscribe(d: Disposable) {
                }

                override fun onNext(u: ResponseDate<Any>) {
                    _createFlag.value = true

                }

                override fun onError(e: Throwable) {
                    _createFlag.value = false
                    Log.e("TAG", "请求失败" + e.message)
                }

                override fun onComplete() {

                }
            })
    }

    fun getTalkDetails(talkId:String){

        HttpManage.getHttpCustTalkService().getTalkDetail(talkId)
            .subscribeOn(Schedulers.io())
            .observeOn(AndroidSchedulers.mainThread())
            .subscribe(object : io.reactivex.Observer<CustTalk> {
                override fun onSubscribe(d: Disposable) {
                }

                override fun onNext(t: CustTalk) {

                    if (t != null){
                        _custTalk.value = t
                    }

                }

                override fun onError(e: Throwable) {
                    Log.e("TAG", "请求失败" + e.message)
                }

                override fun onComplete() {
                }
            })
    }
}