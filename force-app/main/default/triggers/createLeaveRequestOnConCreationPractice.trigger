trigger createLeaveRequestOnConCreationPractice on Consultant__c (after insert) {
    
    List<Past_Information__c> piList = new List<Past_Information__c>(); 
    for(Consultant__c c : trigger.new){
        if(c.type__c == 'Employee'){
            Past_Information__c pi = new Past_Information__c();
            pi.Name = 'Infosys';
            pi.Consultant__c = c.Id;
                piList.add(pi);
        }
    }
    insert piList;
}