trigger updateconsultantowner on Consultant__c (before insert,before update) {
    
    ID userid =[SELECT Id, Name FROM User where name = 'Security User'].id;
    
    for(Consultant__c c:trigger.new){
        If(c.type__c =='Employee'){
            if(c.Salary__c > 10000){
                c.OwnerId = userID;
            }
            
        }
    }

}