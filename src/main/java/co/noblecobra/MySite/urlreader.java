package co.noblecobra.MySite;
import java.util.*;
import java.net.*;
import java.io.*;


public class urlreader {
	URL url;
	BufferedReader reader;

	public urlreader(String u) throws IOException {
		  URL newU = new URL(u);
		  url=newU;
		  BufferedReader newReader = new BufferedReader(new InputStreamReader(url.openStream()));
		  reader=newReader;
		  
	}
	
	
	
	public List<String> find(String F) throws IOException{
		String line;
		List<String> list = new ArrayList<>();
		
		  while ((line = reader.readLine()) != null)
		    {
		    	
		    	if(line.contains(F) ) {
		    	
		     list.add(line);
		    	}
		    }
		return list;
	}
	    
	public String fullPage() throws IOException {
		String line;
		String lines ="";
		  while ((line = reader.readLine()) != null) {
			  lines+=line;
		  }
		  return lines;
	}

	
}
