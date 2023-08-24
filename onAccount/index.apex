trigger deleteAccount on Account (before delete) {
 
    List<Account> Acc=[select id, name from Account];
      
     List<Contact> Cnt=[select id,AccountId from Contact];
        
    for(Account A:Acc){
        
        for(Contact C:Cnt){
        
        if(A.id==C.AccountId){
              
            A.addError('You can not delete Account which has a contact');
        }  
        }}}