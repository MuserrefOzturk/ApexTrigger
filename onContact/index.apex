trigger YeniDeneme on Contact (before insert) {
 
    
 List<Account> Acc=[select id,name,phone from Account];
      
    for(Account A:Acc){
        for(Contact C:trigger.new){
             
            if(string.isblank(C.phone)){
                C.OtherPhone=A.phone;
            }
            
        }
}    
}