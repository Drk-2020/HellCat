trigger CascadeDeleteOnBank on Bank__c (before insert) {
    //Step 1:Collect deta on which you need to fire SOQL query using for loop, in a List
    List<ID> bankIDList = new List<ID>();
    
    //we will be using trigger.old because we are using DELETE event
    for(Bank__c b:trigger.old){
        bankIDList.add(b.Id);
    }
    //Step 2:fire SOQL query,and collect resultset in List/Map
    //
    List<Credit_Card__c> ccList = [SELECT Id, Name, Bank__c FROM Credit_Card__c Where Bank__c IN : bankIDList];
    
    //Step 3:Process the dataset you recieved in step 2
    delete ccList;

}