package server;

import java.io.IOException;
import java.net.*;

public class Server {

	public static void main(String[] args) 
	{
		// TODO Auto-generated method stub
		
		try 
		{
			ServerSocket server = new ServerSocket(666);
			Socket clientSocket = server.accept();
		}
		catch (IOException e)
		{
			System.out.println("Could not listen on port 666");
			System.exit(1);
		}
		
		

	}
	
	public void listenSocket(){
		  try{
		    server = new ServerSocket(4321); 
		  } catch (IOException e) {
		    System.out.println("Could not listen on port 4321");
		    System.exit(-1);
		  }

		listenSocket Socketserver acceptSocket
		  try{
		    client = server.accept();
		  } catch (IOException e) {
		    System.out.println("Accept failed: 4321");
		    System.exit(-1);
		  }

		listenSocketBufferedReaderclientPrintWriter
		  try{
		   in = new BufferedReader(new InputStreamReader(
		                           client.getInputStream()));
		   out = new PrintWriter(client.getOutputStream(), 
		                         true);
		  } catch (IOException e) {
		    System.out.println("Read failed");
		    System.exit(-1);
		  }
		}

		listenSocket
		    while(true){
		      try{
		        line = in.readLine();
		//Send data back to client
		        out.println(line);
		      } catch (IOException e) {
		        System.out.println("Read failed");
		        System.exit(-1);
		      }
		    }
}
