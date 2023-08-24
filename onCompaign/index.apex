trigger UpdateCampaign on Campaign (before update) {
    for(Campaign cmpold:trigger.old)
        for(Campaign cmpNew:trigger.new){
            if(cmpold.id==cmpNew.id && cmpold.StartDate!=cmpNew.StartDate){
                cmpNew.StartDate.addError('You can not change start date, contact your Admin');
            }
        }
}