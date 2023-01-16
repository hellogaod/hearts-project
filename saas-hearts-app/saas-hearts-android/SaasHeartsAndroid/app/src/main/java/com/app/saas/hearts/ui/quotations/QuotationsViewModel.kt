package com.app.saas.hearts.ui.quotations

import android.graphics.Color
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel

class QuotationsViewModel : ViewModel() {

    private val _text = MutableLiveData<String>().apply {
        value = "This is tab Fragment"
    }
    val text: LiveData<String> = _text

    val activeColor: Int = Color.parseColor("#43cf7c")
    val normalColor: Int = Color.parseColor("#666666")

    val activeSize: Float = 16F
    val normalSize: Float = 14F

    val tabs = arrayOf("最新", "热门")
}