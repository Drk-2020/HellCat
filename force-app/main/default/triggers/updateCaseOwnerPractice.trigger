trigger updateCaseOwnerPractice on Case (before insert) {
    Id queueID = [SELECT Id, Name FROM Group where name = 'Service Agent Queue'].Id;
    
    for(Case c : Trigger.new){
        if(c.origin == 'Web'){
            c.ownerId = queueID;
            if(c.Expected_Close_Date__c != null){
               c.Expected_Close_Date__c = system.today() + 5; 
            }
        }
    }    
  }