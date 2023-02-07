package com.app.saas.hearts.ui.user.login

import android.util.Log
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.app.saas.hearts.api.HttpManage
import com.app.saas.hearts.entity.CustUser
import com.app.saas.hearts.entity.UserInfo
import com.app.saas.hearts.utils.MD5Util
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.Disposable
import io.reactivex.schedulers.Schedulers

class LoginViewModel : ViewModel() {

    private val _text = MutableLiveData<String>().apply {
        value = "This is login Activity"
    }
    val text: LiveData<String> = _text

    private val _userInfo = MutableLiveData<UserInfo>()
    val userInfo: LiveData<UserInfo> = _userInfo

    fun login(phone: String, password: String) {
        val custUser = CustUser()
        custUser.phone = phone
        custUser.password = MD5Util.encrypt(password)

        HttpManage.getHttpCustUserService().doLogin(custUser)
            .subscribeOn(Schedulers.io())
            .observeOn(AndroidSchedulers.mainThread())
            .subscribe(object : io.reactivex.Observer<UserInfo> {
                override fun onSubscribe(d: Disposable) {
                }

                override fun onNext(u: UserInfo) {
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