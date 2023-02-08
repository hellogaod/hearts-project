package com.app.saas.hearts.ui.user.detail

import android.util.Log
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.app.saas.hearts.api.HttpManage
import com.app.saas.hearts.entity.CustUser
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.Disposable
import io.reactivex.schedulers.Schedulers

class UserInfoViewModel : ViewModel() {

    private val _text = MutableLiveData<String>().apply {
        value = "This is user info Activity"
    }
    val text: LiveData<String> = _text

    private var _userInfo = MutableLiveData<CustUser>()
    val userInfo: LiveData<CustUser> = _userInfo


    fun detail(userId: String) {

        HttpManage.getHttpCustUserService().getUserDetailById(userId)
            .subscribeOn(Schedulers.io())
            .observeOn(AndroidSchedulers.mainThread())
            .subscribe(object : io.reactivex.Observer<CustUser> {
                override fun onSubscribe(d: Disposable) {
                }

                override fun onNext(u: CustUser) {
                    if (u != null ) {
                        _userInfo.value = u
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