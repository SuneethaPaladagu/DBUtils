package com.nisum.bean;

public class EJ {
	private String txn_uuid;
	private String id;
	private String last_updated_timestamp;
	private String created_timestamp;
	
	public String getTxn_uuid() {
		return txn_uuid;
	}
	public void setTxn_uuid(String txn_uuid) {
		this.txn_uuid = txn_uuid;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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

}
