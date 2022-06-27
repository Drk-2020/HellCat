trigger OnConUpdateDelete on Consultant__c (before update,before delete) {
    
    if(trigger.isBefore && trigger.isUpdate){
       for(integer i = 0; i < trigger.new.size();i++){
        if(trigger.old[i].type__c == 'Employee' && trigger.new[i].type__c != 'Employee'){
            trigger.new[i].addError('You cannot Delete the Record if type = Employee Contact your Admin');
            	    
        }
    }
    }
    if(trigger.isBefore && trigger.isDelete){
       for(Consultant__c c : trigger.old){
        If(c.type__c == 'Employee'){
            c.addError('You Cannot Delete the Employee,Contact your System Admin');
        }
    }  
    }
}