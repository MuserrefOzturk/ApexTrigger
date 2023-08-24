trigger leadMail on Lead (Before update) {
  for( lead singleLead:trigger.new){
        if(singleLead.Email!=null && singleLead.Status=='Working-Contacted' 
           && singleLead.FirstName!= null && singleLead.LastName!= null){
               
               Messaging.SingleEmailMessage msg= new Messaging.SingleEmailMessage();
               string mail=UserInfo.getUserEmail();
               
               List<string> options= new list<string>{mail,singleLead.Email};
                   msg.setToAddresses(options);
                   msg.setPlainTextBody('Hello ' + singleLead.FirstName + ',\n\nYou have been contacted by one of our sales representatives. Please let us know if you have any questions.\n\nBest regards,\nThe Clarusway Team');
                   msg.setSubject('Welcome');
                   Messaging.Email[] emails= new Messaging.Email[]{msg};
                   Messaging.sendEmail(emails);
           }
        
    }
}