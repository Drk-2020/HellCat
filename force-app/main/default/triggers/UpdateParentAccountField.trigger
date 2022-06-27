//Condition = write a trigger,when any opportunity is INSERTED with Amount >=20000,update the respective Parent Account field Premium__c = true(checked)
//this trigger update the Parent Field When child record is inserted.

trigger UpdateParentAccountField on Opportunity (before insert) {
  
    //	Step 1 : Create a List To Store Parent Account Records
      List<Account> lstAcount = new List<Account>();
    
    //	Step 2 : Create a Set to Store IDs or Related Parent Account
       Set<ID> setAccountIDs  = new Set<ID>();
    
    //	Step 3 : Collect all Parent Account IDs (Unique) in the Set Created in Step 2
    for(opportunity opp : trigger.new){
        setAccountIDs.add(opp.AccountId);
       }
    
    //	Step 4 : Create Map To Store Related Account ID and Opportunity record for comparison
      Map<Id,Opportunity> mapAccIdOpp = new Map<Id,Opportunity>();
    
    //	Step 5 : collect All relative Data with Parent Account ID in map which will be used later for comparison
    for(opportunity opp : trigger.new){
        mapAccIdOpp.put(opp.AccountId, opp);
    }
    //	Step 6 : Iterate the logic in the for loop and use map for copmarison
    for(Account obj :[select ID,Premium__c from Account where ID IN : setAccountIDs]){
        if(mapAccIdOpp.get(obj.id).Amount >= 20000){
            obj.Premium__c = TRUE;
        }else{
            obj.Premium__c = FALSE;
        }
        lstAcount.add(obj);
    }
      update lstAcount;
}