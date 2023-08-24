trigger UpdateDescOpp on Opportunity (before insert,before update) {
  
    if(Trigger.isInsert){
        for(Opportunity opp:Trigger.new){
            opp.Description='This opportunity was created by'+userInfo.getFirstName();
                
        }
    }
     if(Trigger.isUpdate){
        for(Opportunity opp:Trigger.new){
            opp.Description='This opportunity was updated by'+userInfo.getFirstName();
                
}
}}