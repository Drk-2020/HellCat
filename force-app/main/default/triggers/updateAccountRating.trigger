trigger updateAccountRating on Account (before insert) {
    
   UpdateAccountOnInsertCalss.updateAccountActive(Trigger.new);
    
    /*for(Account a : trigger.new){
        if(a.rating == 'Cold'){
            a.Active__c = 'Yes';
            
        }
    }*/
}