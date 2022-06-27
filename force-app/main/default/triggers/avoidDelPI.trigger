//Requirement- Avoid deletion of child past information record, if parent consultant type = Employee and Parent Status = Approved
trigger avoidDelPI on Past_Information__c (before delete) {
// Step-1 List of Parent Consultant IDs
   List<Id>	conIDs  = new List<Id>();
//Step-2 collect list of parent consultant IDs in the List step 1
    for(Past_Information__c PI : trigger.old){
        conIDs.add(pi.Consultant__c);
    }
//Step-3 Map to store ID with Corresponding Consltant Records
    Map<ID,Consultant__c> mapCon = new Map<ID,Consultant__c>();
// Step-4 For Loop to collect the records in map based on Parent consultant IDs collected in Step 2
    for(Consultant__c c : [SELECT Id, type__c FROM Consultant__c WHERE ID IN:conIDs]){
        mapCon.put(c.id, c);
    }
//Step-5 as Step 4 Collected all Parent consultant records, in collection Map, Where it can be Referenced based on consultant 
////Id as a Key and Consultant Record as a Value, this will Help Us in Comparison in the For Loop Below to get our Outcome
    for(Past_Information__c PI : trigger.old){
        if(mapCon.containsKey(PI.Consultant__c)){
    if(mapCon.get(PI.Consultant__c).Type__c == 'Employee'){
        PI.addError('You Cannot Delete This Past Information Record Because its Parent Consultant is an Employee');
         }
      }  
    }
}