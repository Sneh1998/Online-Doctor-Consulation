package com.sneh.model;

public class chatMessage {
	private String msgType;
	private MessgeType msgContent;
	private String sender;
	
	public enum MessgeType{
		CHAT, LEAVE, JOIN 
	}
	
	public MessgeType getMsgContent() {
		return msgContent;
	}
	public void setMsgContent(MessgeType msgContent) {
		this.msgContent = msgContent;
	}
	public String getMsgType() {
		return msgType;
	}
	public void setMsgType(String msgType) {
		this.msgType = msgType;
	}
	
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	
	
}
