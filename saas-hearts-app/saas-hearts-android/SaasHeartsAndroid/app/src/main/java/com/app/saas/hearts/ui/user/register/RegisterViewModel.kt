package com.app.saas.hearts.ui.user.register

import android.util.Log
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.app.saas.hearts.api.HttpManage
import com.app.saas.hearts.entity.CustUser
import com.app.saas.hearts.entity.ResponseDate
import com.app.saas.hearts.entity.ValidateCode
import com.app.saas.hearts.utils.MD5Util
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.Disposable
import io.reactivex.schedulers.Schedulers

class RegisterViewModel : ViewModel() {

    private val _text = MutableLiveData<String>().apply {
        value = "This is register Activity"
    }
    val text: LiveData<String> = _text

    private val _validateCode = MutableLiveData<ValidateCode>()
    val validateCode: LiveData<ValidateCode> = _validateCode

    private val _registFalg = MutableLiveData<Boolean>()
    val registFalg: LiveData<Boolean> = _registFalg

    fun getImgCode() {//获取图形验证码

        HttpManage.getHttpCommonService().imgCode()
            .subscribeOn(Schedulers.io())
            .observeOn(AndroidSchedulers.mainThread())
            .subscribe(object : io.reactivex.Observer<ValidateCode> {
                override fun onSubscribe(d: Disposable) {
                }

                override fun onNext(v: ValidateCode) {
                    _validateCode.value = v
                }

                override fun onError(e: Throwable) {
                    Log.e("TAG", "请求失败" + e.message)
                }

                override fun onComplete() {

                }
            })
    }

    fun register(phone: String, uniqueFlag: String, password: String) {
        val custUser = CustUser()
        custUser.phone = phone
        custUser.password = MD5Util.encrypt(password)
        custUser.uniqueIdenty = uniqueFlag

        HttpManage.getHttpCustUserService().register(custUser)
            .subscribeOn(Schedulers.io())
            .observeOn(AndroidSchedulers.mainThread())
            .subscribe(object : io.reactivex.Observer<ResponseDate<Any>> {
                override fun onSubscribe(d: Disposable) {
                }

                override fun onNext(v: ResponseDate<Any>) {
                    if (v != null && v.code == 200) {
                        _registFalg.value = true
                    } else {
                        _registFalg.value = false
                    }

                }

                override fun onError(e: Throwable) {
                    _registFalg.value = false
                }

                override fun onComplete() {

                }
            })
    }
}