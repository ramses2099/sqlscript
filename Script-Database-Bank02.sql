
do $$
declare v_account_id numeric(15,6);
declare v_amount numeric(15,6);
declare v_current_balance numeric(15,6);
declare v_final_balance numeric(15,6);
declare v_transaction_type_id int;
declare rec record;
declare trans_cursor cursor for
	select account_id, amount,transaction_type_id from transactions;
begin
	
    open trans_cursor;
    fetch trans_cursor into rec;
   
   	loop
	   	fetch next from trans_cursor into rec;
	    exit when not found;
	    
	    v_account_id := rec.account_id;
	    v_amount := rec.amount;
	    v_transaction_type_id:= rec.transaction_type_id;
	   
	    select current_balance into v_current_balance from accounts a where account_id  = v_account_id;
	   	
	    if v_transaction_type_id = 1 then
	    	v_final_balance := v_current_balance + v_amount;
	    else   
	   		 v_final_balance := v_current_balance - v_amount;
	   	end if;
	   
	   	if v_final_balance <= 0 then
	   		v_final_balance := 0;
	   	end if;
	   
	   
	   --UPDATE--    
	   update accounts set 
	   	current_balance = v_final_balance
	   where account_id  = v_account_id;
	  
	   update transactions set 
	  	balance = v_final_balance
	   where transaction_type_id = v_transaction_type_id and account_id = v_account_id;
	   
	    raise notice 'accound_id: % , current_balance:%,  amount: % , final_balance % ', v_account_id, v_current_balance, v_amount, v_final_balance;
	   
   		
   	end loop;
   	
	close trans_cursor;

end;
$$
language plpgsql;


select account_id , current_balance from accounts a where account_id  = 58;
select account_id, amount, balance  from transactions where transaction_type_id = 2 and account_id = 58;
