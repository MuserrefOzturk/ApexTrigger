trigger Duplication on Lead (before insert) {
   
    List<Lead> oldlead=[select firstname,lastname from Lead];
    for(Lead leadOld:oldlead){
            for(Lead leadNew:trigger.new){
               
                if(leadNew.firstname==leadOld.firstname && leadNew.lastname==leadOld.lastname){
               
                   leadNew.addError('There is a duplication');
            }
        }
    }
}