package com.mray.veganbrews;

import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;

import org.json.JSONException;
import org.json.JSONObject;

import android.app.Activity;
import android.content.Context;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.view.Menu;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.Toast;

import com.mray.lib.BrewStuff;
import com.mray.lib.WebStuff;

public class MainActivity extends Activity {
	
	Context _context;
	LinearLayout _appLayout;
	SearchForm _search;
	BreweryDisplay _brew;
	Favorites _favList;
	Boolean _connected = false;
	HashMap<String, String> _history;

	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		
		_context = this;
		_appLayout = new LinearLayout(this);
		_history = getHistory();
		Log.i("HISTORY READ", _history.toString());
		
		_search = new SearchForm(_context, "Find a Delicious Brew", "Find It");
		
		//Search Button
		Button searchBtn = _search.getButton();
		searchBtn.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				getBrews(_search.getField().getText().toString());	
			}
		});
		//Detect Network Connection
		_connected = WebStuff.getConnectionStatus(_context);
		if(_connected){
			Log.i("NETWORK CONNECTION", WebStuff.getConnectionType(_context));
		}
				// Add the brewery display
				_brew = new BreweryDisplay(_context);
				
				// Adds FavList 
				_favList = new Favorites(_context);
				
				//Adds the view to the main layout
				_appLayout.addView(_search);
				_appLayout.addView(_brew);
				_appLayout.addView(_favList);
				
				// Sets orientation
				_appLayout.setOrientation(LinearLayout.VERTICAL);
			
		setContentView(_appLayout);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.activity_main, menu);
		return true;
	}
	// API URL
	private void getBrews(String text){
		Log.i("CLICK", text);
		
		String baseURL = "http://api.brewerydb.com/v2/beers?key=dc7a7c3340c5ea4c61add87f613468c0&ibu=65";
		URL finalURL;
		try{
			finalURL = new URL(baseURL);
			Log.i("MY API", baseURL);
			BrewRequest bre = new BrewRequest();
			bre.execute(finalURL);
			
		} catch (MalformedURLException e){
			Log.e("BAD URL", "MALFORMED URL");
			finalURL = null;
		}
	}
	
	// GETS HISTORY
	private HashMap<String, String>getHistory(){
		Object stored = BrewStuff.readObjectFile(_context, "history", false);
		HashMap<String, String> history;
		if(stored == null){
			Log.i("HISTORY", "NO HISTORY FILE FOUND");
			history = new HashMap<String, String>();
		} else {
			history = (HashMap<String, String>) stored;
		}
		return history;
	}
	
	private class BrewRequest extends AsyncTask<URL, Void, String>{
		@Override
		protected String doInBackground(URL...urls ){
			String response = "";
			for (URL url: urls){
				response = WebStuff.getURLStringResponse(url);
			}
			return response;
		}
		
		@Override
		protected void onPostExecute(String result){
			Log.i("URL RESPONSE", result);
			try{
			JSONObject json = new JSONObject(result);
			JSONObject data = json.getJSONObject("id").getJSONObject("name").getJSONObject("description").getJSONObject("abv");//more go here
			if(data.getString("id").compareTo("N/A")==0){
				Toast toast = Toast.makeText(_context, "Brew Not Available", Toast.LENGTH_SHORT);
				toast.show();
			}else {
				Toast toast = Toast.makeText(_context, "Brew is Here" + data.getString("name"), Toast.LENGTH_SHORT);
				toast.show();
				_history.put(data.getString("name"), data.toString());
				BrewStuff.storeObjectFile(_context, "history", _history, false);
				BrewStuff.storeStringFile(_context, "temp", data.toString(), true);
			}
			}catch(JSONException e){
			Log.e("JSON", "APPARENTLY JSON OBJECT EXCEPTION IS NOT WORKING RIGHT!!!" + e.toString());
			}
			
		}
	}
}
