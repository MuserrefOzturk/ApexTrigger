trigger LeadTrigger2 on Lead (after insert) {
    switch on trigger.OperationType{
        
        when AFTER_INSERT{
            List<task> multi=new List<task>(); 
            for(Lead L:trigger.new){
                if(string.isblank(L.phone)){
                    Task x=new Task();
                    x.Subject='update phone';
                    x.ActivityDate= date.today()+10;
                    x.WhoId=L.id;
                    x.OwnerId=L.OwnerId;
                    x.Status='Not Started';
                    x.IsReminderSet=true;
                    x.ReminderDateTime=date.today();
                    multi.add(x);
                }
            }
           insert multi;
            
        }
    }
}