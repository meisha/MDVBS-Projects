package com.mray.justanapp;


import android.annotation.SuppressLint;
import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;


@SuppressLint("NewApi")
public class MainFragment extends Fragment implements OnClickListener {
	
	// Global Vars
	private TextView foodText;
	private EditText edit;

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		
		View view = inflater.inflate(R.layout.fragment_main, container);
		
		edit = (EditText) view.findViewById(R.id.EditText01);
		
		Button button = (Button) view.findViewById(R.id.button01);
		button.setOnClickListener(this);
		
		foodText = (TextView) view.findViewById(R.id.textView02);
		
		return view;
	}

	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		
	}
	

}
