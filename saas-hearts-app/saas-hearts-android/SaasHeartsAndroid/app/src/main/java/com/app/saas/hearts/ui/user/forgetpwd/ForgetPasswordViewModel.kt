package com.app.saas.hearts.ui.user.forgetpwd

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel

class ForgetPasswordViewModel : ViewModel() {

    private val _text = MutableLiveData<String>().apply {
        value = "This is forgetPassword Activity"
    }
    val text: LiveData<String> = _text

}