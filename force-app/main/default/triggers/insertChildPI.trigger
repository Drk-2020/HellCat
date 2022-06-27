trigger insertChildPI on Consultant__c (after insert) {
    List<Past_Information__c> piList = new List<Past_Information__c>();
    
    for(Consultant__c con : Trigger.new){
        if(con.type__c == 'Employee'){
          Past_Information__c pi = new Past_Information__c();
            pi.name = 'TCS';
            pi.Consultant__c = con.Id;
            piList.add(pi);
        }
    }
    insert piList;
}