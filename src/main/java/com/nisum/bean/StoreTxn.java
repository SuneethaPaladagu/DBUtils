package com.nisum.bean;

public class StoreTxn {
	
	private String store_txn_key;
	private String store_no;
	private String processing_date;
	private String status;
	private String store_open_dttm;
	private String store_close_dttm;
	private String crt_user_id;
	private String crt_dttm;
	private String lst_updt_user_id;
	private String lst_updt_dttm;
	
	public String getStore_txn_key() {
		return store_txn_key;
	}
	public void setStore_txn_key(String store_txn_key) {
		this.store_txn_key = store_txn_key;
	}
	public String getStore_no() {
		return store_no;
	}
	public void setStore_no(String store_no) {
		this.store_no = store_no;
	}
	public String getProcessing_date() {
		return processing_date;
	}
	public void setProcessing_date(String processing_date) {
		this.processing_date = processing_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getStore_open_dttm() {
		return store_open_dttm;
	}
	public void setStore_open_dttm(String store_open_dttm) {
		this.store_open_dttm = store_open_dttm;
	}
	public String getStore_close_dttm() {
		return store_close_dttm;
	}
	public void setStore_close_dttm(String store_close_dttm) {
		this.store_close_dttm = store_close_dttm;
	}
	public String getCrt_user_id() {
		return crt_user_id;
	}
	public void setCrt_user_id(String crt_user_id) {
		this.crt_user_id = crt_user_id;
	}
	public String getCrt_dttm() {
		return crt_dttm;
	}
	public void setCrt_dttm(String crt_dttm) {
		this.crt_dttm = crt_dttm;
	}
	public String getLst_updt_user_id() {
		return lst_updt_user_id;
	}
	public void setLst_updt_user_id(String lst_updt_user_id) {
		this.lst_updt_user_id = lst_updt_user_id;
	}
	public String getLst_updt_dttm() {
		return lst_updt_dttm;
	}
	public void setLst_updt_dttm(String lst_updt_dttm) {
		this.lst_updt_dttm = lst_updt_dttm;
	}
	
}
