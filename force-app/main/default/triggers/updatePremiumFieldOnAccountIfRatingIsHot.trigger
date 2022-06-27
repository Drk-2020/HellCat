//Update check box field//

trigger updatePremiumFieldOnAccountIfRatingIsHot on Account (before insert) {
    for(Account a : trigger.new){
        if(a.rating =='Warm'){
            a.Premium__c = true;
         	 
        }
    }
}