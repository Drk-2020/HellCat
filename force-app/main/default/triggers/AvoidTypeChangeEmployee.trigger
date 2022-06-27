trigger AvoidTypeChangeEmployee on Consultant__c (before update) {
    for(integer i = 0; i < trigger.new.size();i++){
        if(trigger.old[i].type__c == 'Employee' && trigger.new[i].type__c != 'Employee'){
            trigger.new[i].addError('You cannot Delete the Record if type = Employee Contact your Admin');
                
            
        }
    }
}