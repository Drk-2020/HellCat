trigger updateCaseOwner on Case (before insert,before update) {
// first get the Owner id of the Service Agent queue so that you can assign it inside for loop 
// Approach 1
    //Group g = [SELECT Id, Name FROM Group where name = 'Service Agent Queue'];
    //Id queueID = g.id;
// Approach 2
    Id queueID = [SELECT Id, Name FROM Group where name = 'Service Agent Queue'].id;

//for loop start
    for(Case c : Trigger.new){
        if(c.origin == 'Phone'){
          
            // assign queue id to the id to owner field 
            c.OwnerId = queueID;
            // set excepted close date to 2 day from today if its not null 
            //if(c.Expected_Close_Date__c !=null){
                c.Expected_Close_Date__c = System.today() + 2;
                
           // }   
        }
    }
 
}