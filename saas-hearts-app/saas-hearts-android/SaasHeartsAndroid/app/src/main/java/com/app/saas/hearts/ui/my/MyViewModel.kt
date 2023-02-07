package com.app.saas.hearts.ui.my

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.app.saas.hearts.entity.UserInfo

class MyViewModel : ViewModel() {

    private val _text = MutableLiveData<String>().apply {
        value = "This is dashboard Fragment"
    }
    val text: LiveData<String> = _text

    private val _userInfo = MutableLiveData<UserInfo>()
    val userInfo: LiveData<UserInfo> = _userInfo

    fun setUserInfo(userInfo: UserInfo) {
        if (userInfo != null)
            _userInfo.value = userInfo
    }

    private val _token = MutableLiveData<String>()
    val token: LiveData<String> = _token

    fun setToken(token: String) {
        _token.value = token

    }
}