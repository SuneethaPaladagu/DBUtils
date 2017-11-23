package com.nisum.controller;

public class Order {

	private String txn_uuid;
	private String last_updated_timestamp;
	private String created_timestamp;
	private String status;
	private String str_nbr;
	private String reg_nbr;
	private String txn_id;
	private String retry;
	private String order_state;
	
	public String getTxn_uuid() {
		return txn_uuid;
	}
	public void setTxn_uuid(String txn_uuid) {
		this.txn_uuid = txn_uuid;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getStr_nbr() {
		return str_nbr;
	}
	public void setStr_nbr(String str_nbr) {
		this.str_nbr = str_nbr;
	}
	public String getReg_nbr() {
		return reg_nbr;
	}
	public void setReg_nbr(String reg_nbr) {
		this.reg_nbr = reg_nbr;
	}
	public String getTxn_id() {
		return txn_id;
	}
	public void setTxn_id(String txn_id) {
		this.txn_id = txn_id;
	}
	public String getRetry() {
		return retry;
	}
	public void setRetry(String retry) {
		this.retry = retry;
	}
	public String getOrder_state() {
		return order_state;
	}
	public void setOrder_state(String order_state) {
		this.order_state = order_state;
	}

}
