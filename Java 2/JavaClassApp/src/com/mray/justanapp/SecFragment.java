package com.mray.justanapp;

import android.annotation.SuppressLint;
import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;

@SuppressLint("NewApi")
public class SecFragment extends Fragment implements OnClickListener {

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,
			Bundle savedInstanceState) {
		

		View view = inflater.inflate(R.layout.fragment_second, container);
		
TextView foodMessage = (TextView) view.findViewById(R.id.ftextView02);
		
		
		// Button takes user back to the main activity
		Button enterBtn = (Button) view.findViewById(R.id.fbutton02); // Enter button to go back to the main view
		enterBtn.setOnClickListener(this);
		
		return view;
	}

	@Override
	public void onClick(View v) {
		// TODO Auto-generated method stub
		
	}
	
	

}
