package com.sneh.service;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

@Service
public class SessionService {
	
	public static interface Fields {
		String IS_LOGGED_IN = "isLoggedIn";
		String NAME = "session_name";
	}
	
	public void set(HttpSession httpSession, String key, String value) {
		httpSession.setAttribute(key, value);
	}
	
	public String check(HttpSession httpSession, String callbackJsp) {
		print(httpSession);
		if(httpSession==null || httpSession.getAttribute(Fields.IS_LOGGED_IN)==null) {
			return "Welcome.jsp";
		}
		return callbackJsp;
	}
	
	private void print(HttpSession httpSession) {
		System.out.println("IsNew = "+httpSession.isNew());
		System.out.println(Fields.IS_LOGGED_IN+" = "+httpSession.getAttribute(Fields.IS_LOGGED_IN));
		System.out.println(Fields.NAME+" = "+httpSession.getAttribute(Fields.NAME));
		
	}

	public void clear(HttpSession httpSession) {
		System.out.println("Clearing Session ....");
		httpSession.removeAttribute(Fields.IS_LOGGED_IN);
		httpSession.removeAttribute(Fields.NAME);
		httpSession.removeAttribute("name");
	}
	
	
}
