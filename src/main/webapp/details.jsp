<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<script src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/bootstrap-table.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.11.1/bootstrap-table.js"></script>


<h4><span >Table Name: </span><span > TXN_SEQ_NBR_T</span></h4>
	    
<c:choose>
	<c:when test = "${not empty txnseqnums}">
		<table class="table table-striped">
		    <thead style="background : #337ab7;border-color: #2e6da4;color: #fff;">
		        <tr>
		        <th scope="col">str_nbr</th>
				<th scope="row">regr_nbr</th>
				<th scope="row">lst_used_txn_seq_nbr</th>
				<th scope="row">crt_dttm</th>
				<th scope="row">lst_update_tmst</th>
				<th scope="row">lst_txn_seq_crt_tmst</th>
				<th scope="row">crt_user_id</th>
				<th scope="row">txn_sales_date</th>
				<th scope="row">first_used_txn_seq_nbr</th>
				<th scope="row">lst_txn_uuid</th>
				<th scope="row">app_name</th>
		        </tr>
		    </thead>
		    <tbody >
		        <c:forEach items="${txnseqnums}" var="txnseqnum">
		            <tr>
		                <td scope="col">${txnseqnum.str_nbr}</td>
		
		                <td scope="col">${txnseqnum.regr_nbr}</td>
		
		                <td scope="col">${txnseqnum.lst_used_txn_seq_nbr}</td>
		
		                <td scope="col">${txnseqnum.crt_dttm}</td>
		
		                <td scope="col">${txnseqnum.lst_update_tmst}</td>
		
		                <td scope="col">${txnseqnum.lst_txn_seq_crt_tmst}</td>
		
		                <td scope="col">${txnseqnum.crt_user_id}</td>
		
		                <td scope="col">${txnseqnum.txn_sales_date}</td>
		
		                <td scope="col">${txnseqnum.first_used_txn_seq_nbr}</td>
		                
		                <td scope="col">${txnseqnum.lst_txn_uuid}</td>
		                
		                <td scope="col">${txnseqnum.app_name}</td>
		            </tr>
		        </c:forEach>
		    </tbody>
		</table>
	</c:when>
	<c:otherwise>
	<table class="table table-striped">
		    <thead style="background : #337ab7;border-color: #2e6da4;color: #fff;">
		        <tr>
		        <th scope="col">str_nbr</th>
				<th scope="row">regr_nbr</th>
				<th scope="row">lst_used_txn_seq_nbr</th>
				<th scope="row">crt_dttm</th>
				<th scope="row">lst_update_tmst</th>
				<th scope="row">lst_txn_seq_crt_tmst</th>
				<th scope="row">crt_user_id</th>
				<th scope="row">txn_sales_date</th>
				<th scope="row">first_used_txn_seq_nbr</th>
				<th scope="row">lst_txn_uuid</th>
				<th scope="row">app_name</th>
		        </tr>
		    </thead>
		    </table>
	    <div class="text-center">
    	        Data not found 
    	 </div>
	 </c:otherwise>
</c:choose>

<br/><br/>
<h4><span>Table Name: </span> <span> STORE_TXN_T</span> </h4>
<c:choose>
	<c:when test = "${not empty storeTxns}">
		<table class="table table-striped">
	<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;"">
		<tr>
		<th scope="col">store_txn_key</th>
		<th scope="col">store_no</th>
		<th scope="col">processing_date</th>
		<th scope="col">status</th>
		<th scope="col">store_open_dttm</th>
		<th scope="col">store_close_dttm</th>
		<th scope="col">crt_user_id</th>
		<th scope="col">crt_dttm</th>
		<th scope="col">lst_updt_user_id</th>
		<th scope="col">lst_updt_dttm</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${storeTxns}" var="storeTxn">
			<tr>
				<td scope="col">${storeTxn.store_txn_key}</td>

				<td scope="col">${storeTxn.store_no}</td>

				<td scope="col">${storeTxn.processing_date}</td>

				<td scope="col">${storeTxn.status}</td>

				<td scope="col">${storeTxn.store_open_dttm}</td>

				<td scope="col">${storeTxn.store_close_dttm}</td>

				<td scope="col">${storeTxn.crt_user_id}</td>

				<td scope="col">${storeTxn.crt_dttm}</td>

				<td scope="col">${storeTxn.lst_updt_user_id}</td>
				
				<td scope="col">${storeTxn.lst_updt_dttm}</td>
				
			</tr>
		</c:forEach>
	</tbody>
</table>
	</c:when>
	<c:otherwise>
	<table class="table table-striped">
	<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;"">
		<tr>
		<th scope="col">store_txn_key</th>
		<th scope="col">store_no</th>
		<th scope="col">processing_date</th>
		<th scope="col">status</th>
		<th scope="col">store_open_dttm</th>
		<th scope="col">store_close_dttm</th>
		<th scope="col">crt_user_id</th>
		<th scope="col">crt_dttm</th>
		<th scope="col">lst_updt_user_id</th>
		<th scope="col">lst_updt_dttm</th>
		</tr>
	</thead>
	</table>
	      <div class="text-center">
    	        Data not found 
    	 </div>
	 </c:otherwise>
</c:choose>
<br /><br/>
<h4><span >Table Name: </span><span> ORDER_T </span></h4>
<c:choose>
	<c:when test = "${not empty orders}">
		<table class="table table-striped">
			<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;"">
				<tr>
				<th scope="col">txn_uuid</th>
				<th scope="col">last_updated_timestamp</th>
				<th scope="col">created_timestamp</th>
				<th scope="col">status</th>
				<th scope="col">str_nbr</th>
				<th scope="col">reg_nbr</th>
				<th scope="col">txn_id</th>
				<th scope="col">retry</th>
				<th scope="col">order_state</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${orders}" var="order">
					<tr>
						<td scope="col">${order.txn_uuid}</td>
		
						<td scope="col">${order.last_updated_timestamp}</td>
		
						<td scope="col">${order.created_timestamp}</td>
		
						<td scope="col">${order.status}</td>
		
						<td scope="col">${order.str_nbr}</td>
		
						<td scope="col">${order.reg_nbr}</td>
		
						<td scope="col">${order.txn_id}</td>
		
						<td scope="col">${order.retry}</td>
		
						<td scope="col">${order.order_state}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</c:when>
	<c:otherwise>
	   <table class="table table-striped">
			<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;"">
				<tr>
				<th scope="col">txn_uuid</th>
				<th scope="col">last_updated_timestamp</th>
				<th scope="col">created_timestamp</th>
				<th scope="col">status</th>
				<th scope="col">str_nbr</th>
				<th scope="col">reg_nbr</th>
				<th scope="col">txn_id</th>
				<th scope="col">retry</th>
				<th scope="col">order_state</th>
				</tr>
			</thead>
			</table>
	     <div class="text-center">
    	        Data not found 
    	 </div>
	 </c:otherwise>
</c:choose>
<br/> <br/>
<h4><span >Table Name: </span><span > CASH_T </span></h4>
<c:choose>
	<c:when test = "${not empty cashs}">
<table class="table table-striped">
	<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;"">
		<tr>
		<th scope="col">record_id</th>
		<th scope="col">str_num</th>
		<th scope="col">reg_num</th>
		<th scope="col">txn_uuid</th>
		<th scope="col">txn_id</th>
		<th scope="col">tender_amount</th>
		<th scope="col">cash_in</th>
		<th scope="col">cash_out</th>
		<th scope="col">transaction_type</th>
		<th scope="col">cashier_id</th>
		<th scope="col">device_timestamp</th>
		<th scope="col">device_serial_number</th>
		<th scope="col">device_LAS_Id</th>
		<th scope="col">last_updated_timestamp</th>
		<th scope="col">created_timestamp</th>
		<th scope="col">reg_reconcile_key</th>
		<th scope="col">payment_id</th>
		<th scope="col">reversal_ind</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${cashs}" var="cash">
			<tr>
				<td scope="col">${cash.record_id}</td>

				<td scope="col">${cash.str_num}</td>

				<td scope="col">${cash.reg_num}</td>

				<td scope="col">${cash.txn_uuid}</td>

				<td scope="col">${cash.txn_id}</td>

				<td scope="col">${cash.tender_amount}</td>

				<td scope="col">${cash.cash_in}</td>

				<td scope="col">${cash.cash_out}</td>

				<td scope="col">${cash.transaction_type}</td>
				
				<td scope="col">${cash.cashier_id}</td>

				<td scope="col">${cash.device_timestamp}</td>

				<td scope="col">${cash.device_serial_number}</td>

				<td scope="col">${cash.device_LAS_Id}</td>

				<td scope="col">${cash.last_updated_timestamp}</td>

				<td scope="col">${cash.created_timestamp}</td>

				<td scope="col">${cash.reg_reconcile_key}</td>

				<td scope="col">${cash.payment_id}</td>

				<td scope="col">${cash.reversal_ind}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</c:when>
	<c:otherwise>
	      <table class="table table-striped">
	<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;"">
		<tr>
		<th scope="col">record_id</th>
		<th scope="col">str_num</th>
		<th scope="col">reg_num</th>
		<th scope="col">txn_uuid</th>
		<th scope="col">txn_id</th>
		<th scope="col">tender_amount</th>
		<th scope="col">cash_in</th>
		<th scope="col">cash_out</th>
		<th scope="col">transaction_type</th>
		<th scope="col">cashier_id</th>
		<th scope="col">device_timestamp</th>
		<th scope="col">device_serial_number</th>
		<th scope="col">device_LAS_Id</th>
		<th scope="col">last_updated_timestamp</th>
		<th scope="col">created_timestamp</th>
		<th scope="col">reg_reconcile_key</th>
		<th scope="col">payment_id</th>
		<th scope="col">reversal_ind</th>
		</tr>
	</thead>
	</table>
	     <div class="text-center">
    	        Data not found 
    	 </div>   
	 </c:otherwise>
</c:choose>
<br/><br/>
<h4><span >Table Name: </span><span > CASH_RECONCILE_STORE_T </span></h4>

<c:choose>
	<c:when test = "${not empty cashReconcileStores}"> 
<table class="table table-striped">
	<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;"">
		<tr>		
		<th scope="col">str_nbr</th>
		<th scope="col">reg_nbr</th>
		<th scope="col">txn_uuid</th>
		<th scope="col">txn_id</th>
		<th scope="col">deposit_amount</th>
		<th scope="col">deposit_bag_number_1</th>
		<th scope="col">deposit_bag_number_2</th>
		<th scope="col">start_device_timestamp</th>
		<th scope="col">end_device_timestamp</th>
		<th scope="col">status</th>
		<th scope="col">cashier_id</th>
		<th scope="col">last_updated_timestamp</th>
		<th scope="col">created_timestamp</th>
		<th scope="col">str_reconcile_key</th>
		<th scope="col">device_date</th>
		<th scope="col">str_reconcile_txn_id</th>
		<th scope="col">store_open_dttm</th>
		<th scope="col">store_txn_key</th>		
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${cashReconcileStores}" var="cashReconcileStore">
			<tr>
				<td scope="col">${cashReconcileStore.str_nbr}</td>

				<td scope="col">${cashReconcileStore.reg_nbr}</td>
				
				<td scope="col">${cashReconcileStore.txn_uuid}</td>

				<td scope="col">${cashReconcileStore.txn_id}</td>

				<td scope="col">${cashReconcileStore.deposit_amount}</td>			

				<td scope="col">${cashReconcileStore.deposit_bag_number_1}</td>

				<td scope="col">${cashReconcileStore.deposit_bag_number_2}</td>

				<td scope="col">${cashReconcileStore.start_device_timestamp}</td>

				<td scope="col">${cashReconcileStore.end_device_timestamp}</td>
				
				<td scope="col">${cashReconcileStore.status}</td>

				<td scope="col">${cashReconcileStore.cashier_id}</td>

				<td scope="col">${cashReconcileStore.last_updated_timestamp}</td>

				<td scope="col">${cashReconcileStore.created_timestamp}</td>

				<td scope="col">${cashReconcileStore.str_reconcile_key}</td>

				<td scope="col">${cashReconcileStore.device_date}</td>

				<td scope="col">${cashReconcileStore.str_reconcile_txn_id}</td>

				<td scope="col">${cashReconcileStore.store_open_dttm}</td>

				<td scope="col">${cashReconcileStore.store_txn_key}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</c:when>
	<c:otherwise>
	<table class="table table-striped">
	<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;"">
		<tr>		
		<th scope="col">str_nbr</th>
		<th scope="col">reg_nbr</th>
		<th scope="col">txn_uuid</th>
		<th scope="col">txn_id</th>
		<th scope="col">deposit_amount</th>
		<th scope="col">deposit_bag_number_1</th>
		<th scope="col">deposit_bag_number_2</th>
		<th scope="col">start_device_timestamp</th>
		<th scope="col">end_device_timestamp</th>
		<th scope="col">status</th>
		<th scope="col">cashier_id</th>
		<th scope="col">last_updated_timestamp</th>
		<th scope="col">created_timestamp</th>
		<th scope="col">str_reconcile_key</th>
		<th scope="col">device_date</th>
		<th scope="col">str_reconcile_txn_id</th>
		<th scope="col">store_open_dttm</th>
		<th scope="col">store_txn_key</th>		
		</tr>
	</thead>
	</table>
	         <div class="text-center">
    	        Data not found 
    	    </div>   
	 </c:otherwise>
</c:choose>
<br/><br/>
<h4><span >Table Name: </span><span > CASH_DRAWER_REGISTER_T</span></h4> 
<c:choose>
	<c:when test = "${not empty cashDrawerRegisters}">
<table class="table table-striped">
	<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;"">
		<tr>		
		<th scope="col">str_nbr</th>
		<th scope="col">reg_nbr</th>
		<th scope="col">start_txn_uuid</th>
		<th scope="col">start_txn_id</th>
		<th scope="col">end_txn_uuid</th>
		<th scope="col">end_txn_id</th>
		<th scope="col">starting_opening_balance</th>
		<th scope="col">ending_opening_balance</th>
		<th scope="col">str_reconcile_key</th>
		<th scope="col">reg_reconcile_key</th>
		<th scope="col">start_device_timestamp</th>
		<th scope="col">end_device_timestamp</th>
		<th scope="col">cashier_id</th>
		<th scope="col">device_serial_no</th>
		<th scope="col">device_las_id</th>
		<th scope="col">status</th>
		<th scope="col">actual_amount</th>
		<th scope="col">expected_amount</th>
		<th scope="col">last_updated_timestamp</th>
		<th scope="col">created_timestamp</th>
		<th scope="col">device_date</th>
		<th scope="col">reg_reconcile_txn_id</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${cashDrawerRegisters}" var="cashDrawerRegister">
			<tr>
				<td scope="col">${cashDrawerRegister.str_nbr}</td>

				<td scope="col">${cashDrawerRegister.reg_nbr}</td>
				
				<td scope="col">${cashDrawerRegister.start_txn_uuid}</td>

				<td scope="col">${cashDrawerRegister.start_txn_id}</td>

				<td scope="col">${cashDrawerRegister.end_txn_uuid}</td>			

				<td scope="col">${cashDrawerRegister.end_txn_id}</td>

				<td scope="col">${cashDrawerRegister.starting_opening_balance}</td>

				<td scope="col">${cashDrawerRegister.ending_opening_balance}</td>

				<td scope="col">${cashDrawerRegister.str_reconcile_key}</td>
				
				<td scope="col">${cashDrawerRegister.reg_reconcile_key}</td>

				<td scope="col">${cashDrawerRegister.start_device_timestamp}</td>

				<td scope="col">${cashDrawerRegister.end_device_timestamp}</td>

				<td scope="col">${cashDrawerRegister.cashier_id}</td>

				<td scope="col">${cashDrawerRegister.device_serial_no}</td>

				<td scope="col">${cashDrawerRegister.device_las_id}</td>

				<td scope="col">${cashDrawerRegister.status}</td>

				<td scope="col">${cashDrawerRegister.actual_amount}</td>

				<td scope="col">${cashDrawerRegister.expected_amount}</td>
				
				<td scope="col">${cashDrawerRegister.last_updated_timestamp}</td>

				<td scope="col">${cashDrawerRegister.created_timestamp}</td>

				<td scope="col">${cashDrawerRegister.device_date}</td>

				<td scope="col">${cashDrawerRegister.reg_reconcile_txn_id}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</c:when>
	<c:otherwise>
	         <table class="table table-striped">
	<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;"">
		<tr>		
		<th scope="col">str_nbr</th>
		<th scope="col">reg_nbr</th>
		<th scope="col">start_txn_uuid</th>
		<th scope="col">start_txn_id</th>
		<th scope="col">end_txn_uuid</th>
		<th scope="col">end_txn_id</th>
		<th scope="col">starting_opening_balance</th>
		<th scope="col">ending_opening_balance</th>
		<th scope="col">str_reconcile_key</th>
		<th scope="col">reg_reconcile_key</th>
		<th scope="col">start_device_timestamp</th>
		<th scope="col">end_device_timestamp</th>
		<th scope="col">cashier_id</th>
		<th scope="col">device_serial_no</th>
		<th scope="col">device_las_id</th>
		<th scope="col">status</th>
		<th scope="col">actual_amount</th>
		<th scope="col">expected_amount</th>
		<th scope="col">last_updated_timestamp</th>
		<th scope="col">created_timestamp</th>
		<th scope="col">device_date</th>
		<th scope="col">reg_reconcile_txn_id</th>
		</tr>
	</thead>
	</table>
	         <div class="text-center">
    	        Data not found 
    	     </div>
	 </c:otherwise>
</c:choose>
<br/><br/>
<h4> <span >Table Name: </span><span > EJ_T</span> </h4>
<c:choose>
	<c:when test = "${not empty ejs}">
<table class="table table-striped">
	<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;">
		<tr>
		<th scope="col">txn_uuid</th>
		<th scope="col">id</th>
		<th scope="col">last_updated_timestamp</th>
		<th scope="col">created_timestamp</th>
       </tr>
	</thead>
	<tbody>
		<c:forEach items="${ejs}" var="ej">
			<tr>
				<td scope="col">${ej.txn_uuid}</td>
				
				<td scope="col">${ej.id}</td>

				<td scope="col">${ej.last_updated_timestamp}</td>

				<td scope="col">${ej.created_timestamp}</td>
          </tr>
		</c:forEach>
	</tbody>
</table>
</c:when>
	<c:otherwise>
	           <table class="table table-striped">
	<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;">
		<tr>
		<th scope="col">txn_uuid</th>
		<th scope="col">id</th>
		<th scope="col">last_updated_timestamp</th>
		<th scope="col">created_timestamp</th>
       </tr>
	</thead>
	</table>
	         <div class="text-center">
    	        Data not found 
    	     </div>
	 </c:otherwise>
</c:choose>
<br/><br/>
<h4><span >Table Name: </span><span >  SIGNATURE_CAPTURE_T</span> </h4>
<c:choose>
	<c:when test = "${not empty signatureCaptures}">
<table class="table table-striped">
	<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;"">
		<tr>
		<th scope="col">txn_uuid</th>
		<th scope="col">created_timestamp</th>
		<th scope="col">last_updated_timestamp</th>
		<th scope="col">status</th>
		<th scope="col">retry</th>
       </tr>
	</thead>
	<tbody>
		<c:forEach items="${signatureCaptures}" var="signatureCapture">
			<tr>
				<td scope="col">${signatureCapture.txn_uuid}</td>
				
				<td scope="col">${signatureCapture.created_timestamp}</td>
				
				<td scope="col">${signatureCapture.last_updated_timestamp}</td>
				
				<td scope="col">${signatureCapture.status}</td>
				
				<td scope="col">${signatureCapture.retry}</td>

          </tr>
		</c:forEach>
	</tbody>
</table>
</c:when>
	<c:otherwise>
	     <table class="table table-striped">
	<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;"">
		<tr>
		<th scope="col">txn_uuid</th>
		<th scope="col">created_timestamp</th>
		<th scope="col">last_updated_timestamp</th>
		<th scope="col">status</th>
		<th scope="col">retry</th>
       </tr>
	</thead>
	</table>
	    <div class="text-center">
    	        Data not found 
    	 </div>      
	 </c:otherwise>
</c:choose>
<br/><br/>
<h4> <span >Table Name: </span><span > ADMIN_T</span> </h4>
<c:choose>
	<c:when test = "${not empty signatureCaptures}">
<table class="table table-striped">
	<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;"">
		<tr>
		<th scope="col">txn_uuid</th>
		<th scope="col">status</th>
		<th scope="col">last_updated_timestamp</th>				
		<th scope="col">created_timestamp</th>
		<th scope="col">retry</th>
       </tr>
	</thead>
	<tbody>
		<c:forEach items="${signatureCaptures}" var="signatureCapture">
			<tr>
				<td scope="col">${signatureCapture.txn_uuid}</td>
				
				<td scope="col">${signatureCapture.status}</td>		
				
				<td scope="col">${signatureCapture.last_updated_timestamp}</td>				
				
				<td scope="col">${signatureCapture.created_timestamp}</td>

				<td scope="col">${signatureCapture.retry}</td>

          </tr>
		</c:forEach>
	</tbody>
</table>
</c:when>
	<c:otherwise>
	<table class="table table-striped">
	<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;"">
		<tr>
		<th scope="col">txn_uuid</th>
		<th scope="col">status</th>
		<th scope="col">last_updated_timestamp</th>				
		<th scope="col">created_timestamp</th>
		<th scope="col">retry</th>
       </tr>
	</thead>
	</table>
	      <div class="text-center">
    	        Data not found 
    	 </div>
	 </c:otherwise>
</c:choose>
<br/><br/>
<h4> <span >Table Name: </span><span > TXN_SYNC_T</span> </h4>  
<c:choose>
	<c:when test = "${not empty txnSyncs}">
<table class="table table-striped">
	<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;"">
		<tr>
		<th scope="col">txn_uuid</th>		
       </tr>
	</thead>
	<tbody>
		<c:forEach items="${txnSyncs}" var="txnSync">
			<tr>
				<td scope="col">${txnSync.txn_uuid}</td>				
          </tr>
		</c:forEach>
	</tbody>
</table>

</c:when>
	<c:otherwise>
	    <table class="table table-striped">
	<thead style="background : #337ab7;border-color: #2e6da4;color: #fff;"">
		<tr>
		<th scope="col">txn_uuid</th>		
       </tr>
	</thead>
	</table>
	   <div class="text-center">
    	        Data not found 
    	 </div>
	 </c:otherwise>
</c:choose>
<br/>


