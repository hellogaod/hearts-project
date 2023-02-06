package com.app.saas.hearts.ui.user.detail

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel

class UserInfoViewModel : ViewModel() {

    private val _text = MutableLiveData<String>().apply {
        value = "This is user info Activity"
    }
    val text: LiveData<String> = _text

}