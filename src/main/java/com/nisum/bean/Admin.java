package com.nisum.bean;

public class Admin {
	
	private String txn_uuid;
	private String status;
	private String last_updated_timestamp;
	private String created_timestamp;
	private String retry;
	public String getTxn_uuid() {
		return txn_uuid;
	}
	public void setTxn_uuid(String txn_uuid) {
		this.txn_uuid = txn_uuid;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getLast_updated_timestamp() {
		return last_updated_timestamp;
	}
	public void setLast_updated_timestamp(String last_updated_timestamp) {
		this.last_updated_timestamp = last_updated_timestamp;
	}
	public String getCreated_timestamp() {
		return created_timestamp;
	}
	public void setCreated_timestamp(String created_timestamp) {
		this.created_timestamp = created_timestamp;
	}
	public String getRetry() {
		return retry;
	}
	public void setRetry(String retry) {
		this.retry = retry;
	}


}
