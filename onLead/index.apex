trigger kayit on Lead (before insert) {
    system.debug('trigger working');
    system.debug(trigger.new);
    for(Lead x:trigger.new){
        x.firstName =x.firstName.toUpperCase();
        x.LastName= x.LastName.toUpperCase();
        x.company= x.company.toUpperCase();
    
    
    if(string.isBlank(x.Email)){
        x.addError('hhjk');
    }
    }

}