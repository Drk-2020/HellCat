/* Update Active field on Account  to 'YES' if the acount recored is created with rating= cold
 */
trigger updateAccountFieldActivePractice on Account (before insert) {
    
    updateAccoutOnInsertPractice.updateAccountActive(trigger.new);
   /* for(Account a : trigger.new){
        if(a.rating == 'cold'){
           a.Active__c = 'Yes'; 
        }
    }*/

}