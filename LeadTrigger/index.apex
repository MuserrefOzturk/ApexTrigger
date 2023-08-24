trigger LeadTrigger on Lead (before insert) {
    for(Lead L:trigger.new){
        L.firstname=L.firstname.toUpperCase();
        L.lastname=L.lastname.toUpperCase();
        L.Company=L.Company.toUpperCase();
    }
}