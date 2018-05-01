package client;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.*;
import java.util.Scanner;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;

public class Client extends Application
{
	public static void main(String[] args) 
	{
		launch(args);
		// TODO Auto-generated method stub
		
		Scanner kb = new Scanner(System.in);
		System.out.print("Port: ");
		int port = kb.nextInt();
		System.out.print("Host Name: ");
		String hostName = kb.next();
		kb.close();
		
		clientOps(hostName, port);
	}

	@Override
	public void start(Stage primaryStage) throws Exception 
	{
		// TODO Auto-generated method stub
		primaryStage.setTitle("Hello World!");
		StackPane root = new StackPane();
        primaryStage.setScene(new Scene(root, 300, 250));
        primaryStage.show();
	}
	
	public static void clientOps(String hostName, int port)
	{
		try
		{
			Socket clientSocket = new Socket(hostName, port);
            PrintWriter out = new PrintWriter(clientSocket.getOutputStream(), true);
			BufferedReader in = new BufferedReader(new InputStreamReader(clientSocket.getInputStream()));
			System.out.println("Connected.");
			
			String fromServer;
			
			fromServer = in.readLine();
			System.out.println(fromServer);
			
			out.println("input from client");
			
			clientSocket.close();
		}
		catch (UnknownHostException ex)
		{
			System.out.println("Unknown host");
		}
		catch (IOException ex)
		{
			System.out.println("IOException on port.");
		}
	}
}
