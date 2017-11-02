package controller;
import java.io.IOException;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

import javax.websocket.*;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import org.springframework.web.bind.annotation.RequestMapping;

@ServerEndpoint("/broadcasting")
public class BroadsocketController {
	
	@RequestMapping("/chatting.we")
	public String catting(){
		return "chatting/chattingMain";
	}
	

	private static Set<Session> clients = Collections
			.synchronizedSet(new HashSet<Session>());

	@OnMessage
	public void onMessage(String message, Session session) throws IOException {
		System.out.println(message);
		synchronized (clients) {
			// Iterate over the connected sessions
			// and broadcast the received message
			for (Session client : clients) {
				if (!client.equals(session)) {
					client.getBasicRemote().sendText(message);
				}
			}
		}
	}

	@OnOpen
	public void onOpen(Session session) {
		// Add session to the connected sessions set
		System.out.println(session);
		clients.add(session);
	}

	@OnClose
	public void onClose(Session session) throws IOException {
		// Remove session from the connected sessions set
		
		clients.remove(session);
		
		for (Session client : clients) {
			if (!client.equals(session)) {
			    String message = String.format("System> %s, %s", "���",
		                " has disconnection.");
		    	client.getBasicRemote().sendText(message);
			}
	    
	}
	
	}
}
