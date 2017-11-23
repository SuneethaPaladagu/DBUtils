package com.nisum.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nisum.bean.Admin;
import com.nisum.bean.Cash;
import com.nisum.bean.CashDrawerRegister;
import com.nisum.bean.CashReconcileStore;
import com.nisum.bean.EJ;
import com.nisum.bean.SignatureCapture;
import com.nisum.bean.StoreTxn;
import com.nisum.bean.TxnSeqNum;
import com.nisum.bean.TxnSync;


@Controller
public class DBController {

	@RequestMapping(value = "/nextButton",method=RequestMethod.POST)
	public void nextButtonClicked(@RequestParam String dburl, @RequestParam String username,
			@RequestParam String password, HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession sesson = request.getSession() ;
		sesson.setAttribute("dburl", dburl);
		sesson.setAttribute("username", username);
		sesson.setAttribute("password", password);
	}
	@RequestMapping(value = "/getdata")
	public ModelAndView getData(@RequestParam String dburl, @RequestParam String username,
			@RequestParam String password, @RequestParam String store, @RequestParam String register,
			@RequestParam String date, HttpServletRequest request) throws SQLException, ServletException, IOException {

		Connection connection = DriverManager.getConnection(dburl, username, password);
		Statement statement = connection.createStatement();
		ResultSet resultset = statement.executeQuery("select * from order_t where str_nbr = '" + store
				+ "' and reg_nbr = '" + register + "' and DATE(created_timestamp) like '" + date + "'");

		List<Order> orders = new ArrayList<Order>();
		Map<String, Object> map = new HashMap<>();

		while (resultset.next()) {
			Order order = new Order();
			order.setTxn_uuid(resultset.getString("txn_uuid"));
			order.setLast_updated_timestamp(resultset.getString("last_updated_timestamp"));
			order.setCreated_timestamp(resultset.getString("created_timestamp"));
			order.setStatus(resultset.getString("status"));
			order.setStr_nbr(resultset.getString("str_nbr"));
			order.setReg_nbr(resultset.getString("reg_nbr"));
			order.setTxn_id(resultset.getString("txn_id"));
			order.setRetry(resultset.getString("retry"));
			order.setOrder_state(resultset.getString("order_state"));
			System.out.println("resultset name is" + resultset.getString("txn_uuid"));
			orders.add(order);
		}

		
		
		
		
		Statement statement1 = connection.createStatement();
		ResultSet resultset1 = statement1.executeQuery("select * from txn_seq_nbr_t where str_nbr = '" + store
				+ "' and regr_nbr = '" + register + "' and DATE(crt_dttm) like '" + date + "'");

		List<TxnSeqNum> txnseqnums = new ArrayList<TxnSeqNum>();
		//Map<String, Object> map = new HashMap<>();

		while (resultset1.next()) {
			TxnSeqNum txnseqnum = new TxnSeqNum();
		
			txnseqnum.setStr_nbr(resultset1.getString("str_nbr"));
			txnseqnum.setRegr_nbr(resultset1.getString("regr_nbr"));
			txnseqnum.setLst_used_txn_seq_nbr(resultset1.getString("lst_used_txn_seq_nbr"));
			txnseqnum.setCrt_dttm(resultset1.getString("crt_dttm"));
			txnseqnum.setLst_update_tmst(resultset1.getString("lst_update_tmst"));
			txnseqnum.setLst_txn_seq_crt_tmst(resultset1.getString("lst_txn_seq_crt_tmst"));
			txnseqnum.setCrt_user_id(resultset1.getString("crt_user_id"));
			txnseqnum.setTxn_sales_date(resultset1.getString("txn_sales_date"));
			txnseqnum.setFirst_used_txn_seq_nbr(resultset1.getString("first_used_txn_seq_nbr"));
			txnseqnum.setLst_txn_uuid(resultset1.getString("lst_txn_uuid"));
			txnseqnum.setApp_name(resultset1.getString("app_name"));

			
			System.out.println("resultset name is" + resultset1.getString("str_nbr"));
			txnseqnums.add(txnseqnum);
		}
		
		statement = connection.createStatement();			 
		   resultset = 
	                    statement.executeQuery("select * from store_txn_t where store_no = '" + store + "'  and DATE(crt_dttm) like '" + date + "'") ; 
		  
		  List<StoreTxn> storeTxns =  new ArrayList<StoreTxn>();
            
	                while (resultset.next()) {	                	
	                	StoreTxn storeTxn = new StoreTxn();		                		                	
	                	storeTxn.setStore_txn_key(resultset.getString("store_txn_key"));	
	                	storeTxn.setStore_no(resultset.getString("store_no"));
	                	storeTxn.setProcessing_date(resultset.getString("processing_date"));		                
	                	storeTxn.setStatus(resultset.getString("status"));
	                	storeTxn.setStore_open_dttm(resultset.getString("store_open_dttm"));
	                	storeTxn.setStore_close_dttm(resultset.getString("store_close_dttm"));
	                	storeTxn.setCrt_user_id(resultset.getString("crt_user_id"));
	                	storeTxn.setCrt_dttm(resultset.getString("crt_dttm"));
	                	storeTxn.setLst_updt_user_id(resultset.getString("lst_updt_user_id"));
	                	storeTxn.setLst_updt_dttm(resultset.getString("lst_updt_dttm"));
		                storeTxns.add(storeTxn);
		            }	 	          
		
	                statement = connection.createStatement();
		       		 
		      		  resultset = statement.executeQuery("select * from cash_t where str_num = '" + store + "' and reg_num = '" + register + "' and DATE(created_timestamp) like '" + date + "'") ; 
		      		  
		      		  List<Cash> cashs =  new ArrayList<Cash>();
		                     
		      	                while (resultset.next()) {	      	              
		      	          	
		      	                	Cash cash = new Cash();
		      	                	cash.setRecord_id(resultset.getString("record_id"));
		      	                	cash.setStr_num(resultset.getString("str_num"));
		      	                	cash.setReg_num(resultset.getString("reg_num"));	      	              
		      	                	cash.setTxn_uuid(resultset.getString("txn_uuid"));
		      	                	cash.setTxn_id(resultset.getString("txn_id"));	
		      	                	cash.setTender_amount(resultset.getString("tender_amount"));
		      	                	cash.setCash_in(resultset.getString("cash_in"));
		      	                	cash.setCash_out(resultset.getString("cash_out"));
		      	                	cash.setTransaction_type(resultset.getString("transaction_type"));
		      	                	cash.setCashier_id(resultset.getString("cashier_id"));
		      	                	cash.setDevice_timestamp(resultset.getString("device_timestamp"));
		      	                	cash.setDevice_serial_number(resultset.getString("device_serial_number"));
		      	                	cash.setDevice_LAS_Id(resultset.getString("device_LAS_Id"));	    
		      	                	cash.setLast_updated_timestamp(resultset.getString("last_updated_timestamp"));
		      	                	cash.setCreated_timestamp(resultset.getString("created_timestamp"));
		      	                	cash.setReg_reconcile_key(resultset.getString("reg_reconcile_key"));
		      	                	cash.setPayment_id(resultset.getString("payment_id"));
		      	                	cash.setReversal_ind(resultset.getString("reversal_ind"));
		      	                	
		      		               cashs.add(cash);
		      		            }
		      	              statement = connection.createStatement();
		     	       		 
		    	      		  resultset = statement.executeQuery("select * from cash_reconcile_store_t where str_nbr = '" + store + "' and reg_nbr = '" + register + "' and DATE(created_timestamp) like '" + date + "'") ; 
		    	      		  
		    	      		  List<CashReconcileStore> cashReconcileStores =  new ArrayList<CashReconcileStore>();
		    	                     
		    	      	                while (resultset.next()) {	      	              
		    	      	          	
		    	      	                	CashReconcileStore cashReconcileStore = new CashReconcileStore();
		    	      	             
		    	      	                	cashReconcileStore.setStr_nbr(resultset.getString("str_nbr"));
		    	      	                	cashReconcileStore.setReg_nbr(resultset.getString("reg_nbr"));	      	              
		    	      	                	cashReconcileStore.setTxn_uuid(resultset.getString("txn_uuid"));
		    	      	                	cashReconcileStore.setTxn_id(resultset.getString("txn_id"));	
		    	      	                	cashReconcileStore.setDeposit_amount(resultset.getString("deposit_amount"));
		    	      	                	cashReconcileStore.setDeposit_bag_number_1(resultset.getString("deposit_bag_number_1"));
		    	      	                	cashReconcileStore.setDeposit_bag_number_2(resultset.getString("deposit_bag_number_2"));
		    	      	                	cashReconcileStore.setStart_device_timestamp(resultset.getString("start_device_timestamp"));
		    	      	                	cashReconcileStore.setEnd_device_timestamp(resultset.getString("end_device_timestamp"));
		    	      	                	cashReconcileStore.setStatus(resultset.getString("status"));
		    	      	                	cashReconcileStore.setCashier_id(resultset.getString("cashier_id"));
		    	      	                	cashReconcileStore.setLast_updated_timestamp(resultset.getString("last_updated_timestamp"));
		    	      	                	cashReconcileStore.setCreated_timestamp(resultset.getString("created_timestamp"));	    	      	                
		    	      	                	cashReconcileStore.setStr_reconcile_key(resultset.getString("str_reconcile_key"));
		    	      	                	cashReconcileStore.setDevice_date(resultset.getString("device_date"));	    
		    	      	                	cashReconcileStore.setStr_reconcile_txn_id(resultset.getString("str_reconcile_txn_id"));
		    	      	                	cashReconcileStore.setStore_open_dttm(resultset.getString("store_open_dttm"));
		    	      	                	cashReconcileStore.setStore_txn_key(resultset.getString("store_txn_key"));
		    	      	                	
		    	      	                	cashReconcileStores.add(cashReconcileStore);
		    	      		            }
		    	      	  
		    	      	              statement = connection.createStatement();
		    		     	       		 
		    	    	      		  resultset = statement.executeQuery("select * from cash_drawer_register_t where str_nbr = '" + store + "' and reg_nbr = '" + register + "' and DATE(created_timestamp) like '" + date + "'") ; 
		    	    	      		  
		    	    	      		  List<CashDrawerRegister> cashDrawerRegisters =  new ArrayList<CashDrawerRegister>();
		    	    	                     
		    	    	      	                while (resultset.next()) {	      	              
		    	    	      	          	
		    	    	      	                	CashDrawerRegister cashDrawerRegister = new CashDrawerRegister();	 	    	      	            
		    	    	      	                	
		    	    	      	                	cashDrawerRegister.setStr_nbr(resultset.getString("str_nbr"));
		    	    	      	                	cashDrawerRegister.setReg_nbr(resultset.getString("reg_nbr"));	      	              
		    	    	      	                	cashDrawerRegister.setStart_txn_uuid(resultset.getString("start_txn_uuid"));
		    	    	      	                	cashDrawerRegister.setStart_txn_id(resultset.getString("start_txn_id"));	
		    	    	      	                	cashDrawerRegister.setEnd_txn_uuid(resultset.getString("end_txn_uuid"));
		    	    	      	                	cashDrawerRegister.setEnd_txn_id(resultset.getString("end_txn_id"));
		    	    	      	                	cashDrawerRegister.setStarting_opening_balance(resultset.getString("starting_opening_balance"));
		    	    	      	                	cashDrawerRegister.setEnding_opening_balance(resultset.getString("ending_opening_balance"));
		    	    	      	                	cashDrawerRegister.setStr_reconcile_key(resultset.getString("str_reconcile_key"));
		    	    	      	                	cashDrawerRegister.setReg_reconcile_key(resultset.getString("reg_reconcile_key"));
		    	    	      	                	cashDrawerRegister.setStart_device_timestamp(resultset.getString("start_device_timestamp"));
		    	    	      	                	cashDrawerRegister.setEnd_device_timestamp(resultset.getString("end_device_timestamp"));
		    	    	      	                	cashDrawerRegister.setCashier_id(resultset.getString("cashier_id"));
		    	    	      	                	cashDrawerRegister.setDevice_serial_no(resultset.getString("device_serial_no"));
		    	    	      	                	cashDrawerRegister.setDevice_las_id(resultset.getString("device_las_id"));
		    	    	      	                	cashDrawerRegister.setStatus(resultset.getString("status"));
		    	    	      	                	cashDrawerRegister.setActual_amount(resultset.getString("actual_amount"));
		    	    	      	                	cashDrawerRegister.setExpected_amount(resultset.getString("expected_amount"));
		    	    	      	                	cashDrawerRegister.setLast_updated_timestamp(resultset.getString("last_updated_timestamp"));
		    	    	      	                	cashDrawerRegister.setCreated_timestamp(resultset.getString("created_timestamp"));	    	      	                
		    	    	      	                	cashDrawerRegister.setDevice_date(resultset.getString("device_date"));	    
		    	    	      	                	cashDrawerRegister.setReg_reconcile_txn_id(resultset.getString("reg_reconcile_txn_id"));
		    	    	      	                	
		    	    	      	                	
		    	    	      	                	cashDrawerRegisters.add(cashDrawerRegister);
		    	    	      		            }               
		      	                
		                statement = connection.createStatement();
		                resultset = statement.executeQuery("select * from ej_t where txn_uuid in ( select txn_uuid from order_t where str_nbr = '" + store + "' and reg_nbr = '" + register + "' and DATE(created_timestamp) like '" + date + "') ") ; 
				  
				         List<EJ> ejs =  new ArrayList<EJ>();
		               
			                while (resultset.next()) {
			                	EJ ej = new EJ();
			                	ej.setTxn_uuid(resultset.getString("txn_uuid"));
			                	ej.setId(resultset.getString("id"));
			                	ej.setLast_updated_timestamp(resultset.getString("last_updated_timestamp"));
			                	ej.setCreated_timestamp(resultset.getString("created_timestamp"));
			                	ejs.add(ej);
			                }
			                
			                statement = connection.createStatement();
			                resultset = statement.executeQuery("select * from signature_capture_t where txn_uuid in ( select txn_uuid from order_t where str_nbr = '" + store + "' and reg_nbr = '" + register + "' and DATE(created_timestamp) like '" + date + "') ") ; 
					  
					         List<SignatureCapture> signatureCaptures =  new ArrayList<SignatureCapture>();
			               
				                while (resultset.next()) {
				                	SignatureCapture signatureCapture = new SignatureCapture();
				                	signatureCapture.setTxn_uuid(resultset.getString("txn_uuid"));
				                	signatureCapture.setCreated_timestamp(resultset.getString("created_timestamp"));
				                	signatureCapture.setLast_updated_timestamp(resultset.getString("last_updated_timestamp"));
				                	signatureCapture.setStatus(resultset.getString("status"));
				                	signatureCapture.setRetry(resultset.getString("retry"));
				                	signatureCaptures.add(signatureCapture);
				                }
				                
				                statement = connection.createStatement();
				                resultset = statement.executeQuery("select * from admin_t where  DATE(created_timestamp) like '" + date + "'") ; 
						  
						         List<Admin> admins =  new ArrayList<Admin>();
				               
					                while (resultset.next()) {
					                	Admin admin = new Admin();
					                	admin.setTxn_uuid(resultset.getString("txn_uuid"));
					                	admin.setStatus(resultset.getString("status"));
					                	admin.setLast_updated_timestamp(resultset.getString("last_updated_timestamp"));
					                	admin.setCreated_timestamp(resultset.getString("created_timestamp"));
					                	admin.setRetry(resultset.getString("retry"));
					                	admins.add(admin);
					                }
				                
			                
			               statement = connection.createStatement();			 
			     		   resultset = 
			     	                    statement.executeQuery("select * from txn_sync_t where txn_uuid in ( select txn_uuid from order_t where str_nbr = '" + store + "' and reg_nbr = '" + register + "' and DATE(created_timestamp) like '" + date + "') ") ;  
			     		  
			     		  List<TxnSync> txnSyncs =  new ArrayList<TxnSync>();
			                    
			     	                while (resultset.next()) {	                	
			     	                	TxnSync txnSync = new TxnSync();		                		                	
			     	                	txnSync.setTxn_uuid(resultset.getString("txn_uuid"));	
			     	                	
			     	                	txnSyncs.add(txnSync);
			     		            }            
		
		
		request.getSession().setAttribute("orders", orders);
		request.getSession().setAttribute("txnseqnums", txnseqnums);
		request.getSession().setAttribute("storeTxns", storeTxns);
		request.getSession().setAttribute("cashs", cashs);
		request.getSession().setAttribute("cashReconcileStores", cashReconcileStores);
		request.getSession().setAttribute("cashReconcileStores", cashReconcileStores);
		request.getSession().setAttribute("cashDrawerRegisters", cashDrawerRegisters);
		request.getSession().setAttribute("ejs", ejs);
		request.getSession().setAttribute("signatureCaptures", signatureCaptures);
		request.getSession().setAttribute("admins", admins);
		request.getSession().setAttribute("txnSyncs", txnSyncs);
		//map.put("rows", orders);
		
		ModelAndView model = new ModelAndView("details");
		model.addObject("orders", orders);
		model.addObject("txnseqnums", txnseqnums);
		model.addObject("storeTxns", storeTxns) ;
		model.addObject("cashs", cashs); 
	  	model.addObject("cashReconcileStores", cashReconcileStores); 
	  	model.addObject("cashDrawerRegisters", cashDrawerRegisters); 
	  	model.addObject("ejs", ejs);
	  	model.addObject("signatureCaptures", signatureCaptures);
	  	model.addObject("admins", admins);
	  	model.addObject("txnSyncs", txnSyncs);   
		
		return model;
	}

}
