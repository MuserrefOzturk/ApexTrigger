trigger LeadDuplication on Lead (before insert) {
 List<Lead> leadlist= [select id,firstname,lastname from Lead where 
                       firstname=:trigger.new[0].firstname AND lastname=:trigger.new[0].lastname];
     if(leadlist.size()!=0){
         trigger.new[0].firstname.addError('there is a duplication on lead');
     }
}