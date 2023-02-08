package com.app.saas.hearts.ui.user.edit

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.app.saas.hearts.entity.UserInfo

class UserEditViewModel : ViewModel() {

    private val _text = MutableLiveData<String>().apply {
        value = "This is user edit Activity"
    }
    val text: LiveData<String> = _text

    private var _userInfo = MutableLiveData<UserInfo>()
    val userInfo: LiveData<UserInfo> = _userInfo
    fun setUserInfo(userInfo: UserInfo?){
        userInfo?.let {
            _userInfo.value = it
        }
    }

}