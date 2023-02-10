package com.app.saas.hearts.ui.talk

import android.util.Log
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.app.saas.hearts.api.HttpManage
import com.app.saas.hearts.entity.CustTalk
import com.app.saas.hearts.entity.CustUser
import com.app.saas.hearts.entity.ResponseDate
import com.app.saas.hearts.entity.UserInfo
import com.app.saas.hearts.utils.MD5Util
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.Disposable
import io.reactivex.schedulers.Schedulers

class CreateTalkViewModel : ViewModel() {

    private val _text = MutableLiveData<String>().apply {
        value = "This is create talk Activity"
    }
    val text: LiveData<String> = _text

    private val _createFlag = MutableLiveData<Boolean>()
    val createFlag: LiveData<Boolean> = _createFlag

    fun createTalk(token:String,title: String, content: String) {
        val custTalk = CustTalk()
        custTalk.content = content
        custTalk.title = title

        HttpManage.getHttpCustTalkService().addTalk(token,custTalk)
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
}