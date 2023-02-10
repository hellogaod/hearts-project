package com.app.saas.hearts.ui.set

import android.util.Log
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.app.saas.hearts.api.HttpManage
import com.app.saas.hearts.entity.ResponseDate
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.Disposable
import io.reactivex.schedulers.Schedulers

class SetViewModel : ViewModel() {

    private val _text = MutableLiveData<String>().apply {
        value = "This is set Activity"
    }
    val text: LiveData<String> = _text


    private val _logoutFalg = MutableLiveData<Boolean>()
    val logoutFalg: LiveData<Boolean> = _logoutFalg

    fun logout() {//退出登录

        HttpManage.getHttpCustUserService().logout()
            .subscribeOn(Schedulers.io())
            .observeOn(AndroidSchedulers.mainThread())
            .subscribe(object : io.reactivex.Observer<ResponseDate<Any>> {
                override fun onSubscribe(d: Disposable) {
                }

                override fun onNext(v: ResponseDate<Any>) {
                    _logoutFalg.value = true
                }

                override fun onError(e: Throwable) {
                    _logoutFalg.value = false
                    Log.e("TAG", "请求失败" + e.message)
                }

                override fun onComplete() {

                }
            })
    }

}