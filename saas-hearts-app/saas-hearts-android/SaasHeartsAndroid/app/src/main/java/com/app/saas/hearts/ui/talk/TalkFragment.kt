package com.app.saas.hearts.ui.talk

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.fragment.app.Fragment
import androidx.lifecycle.Observer
import androidx.lifecycle.ViewModelProvider
import com.app.saas.hearts.databinding.FragmentTalkBinding

class TalkFragment : Fragment() {

    private lateinit var talkViewModel: TalkViewModel
    private var _binding: FragmentTalkBinding? = null

    // This property is only valid between onCreateView and
    // onDestroyView.
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        talkViewModel =
            ViewModelProvider(this).get(TalkViewModel::class.java)

        _binding = FragmentTalkBinding.inflate(inflater, container, false)
        val root: View = binding.root

        val textView: TextView = binding.textTalk
        talkViewModel.text.observe(viewLifecycleOwner, Observer {
            textView.text = it
        })
        return root
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}