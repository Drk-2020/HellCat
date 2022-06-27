trigger createleaverequestOnConCreation on Consultant__c (after insert) {
    
    List<Leave_Request__c> lrList = new List<Leave_Request__c>();
    for(Consultant__c con : trigger.new){
    if(con.type__c =='Employee'){
        // create a child leave request with name 'Diwali Holiday'
        Leave_Request__c lr = new Leave_Request__c();
        lr.name = 'Diwali Holiday';
        lr.Consultant__c = con.id;
        lrList.add(lr);
        //insert lr; // dml(data manipulation language) statment- will be exeuted based on number of consultant records-leads to governer limit exception
       }
        
    }
    insert lrList; // dml ststment one time exucution
    
    //NOTE : Never ever write the DML statment inside a For Loop 
}