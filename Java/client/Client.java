package client;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.*;
import java.util.Scanner;
import javafx.application.Application;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.StackPane;
import javafx.scene.text.Text;
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
		//StackPane root = new StackPane();
		
        GridPane grid = new GridPane();
        grid.setAlignment(Pos.CENTER);
        grid.setHgap(10);
        grid.setVgap(10);
        grid.setPadding(new Insets(25, 25, 25, 25));
        
        primaryStage.setScene(new Scene(grid, 300, 250));
        
        Text address = new Text("Host Name: ");
        address.setText("Host Name:");
        Text port = new Text("Port:");
        TextField addressField = new TextField();
        TextField portField = new TextField();
        
        Button submitButton = new Button("Submit");
        
        
        grid.add(address, 0, 0);
        grid.add(port, 0, 1);
        grid.add(addressField, 1, 0);
        grid.add(portField, 1, 1);
        grid.add(submitButton, 0, 2);
        
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
