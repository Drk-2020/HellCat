trigger AvoidDeletionOfConsultant on Consultant__c (before delete) {
    for(Consultant__c c : trigger.old){
        If(c.type__c == 'Employee'){
            c.addError('You Cannot Delete the Employee,Contact your System Admin');
        }
    }
}