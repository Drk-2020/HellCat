trigger OnConInsertDelete on Consultant__c (before insert,before delete) {
    if(trigger.isbefore && trigger.isinsert){
         for(Consultant__c con : Trigger.new){
         if(con.type__c == 'Employee'){
            con.Name = 'Mr.' + con.Name;
            
        }   
    }
}     
 
    if(trigger.isbefore && trigger.isdelete){
        for(Consultant__c c: trigger.old){
        if(c.type__c == 'Employee'){
            c.addError('You Cannot Delete Employee.Please Contact Your System Admin');
        }
    }
}
        
}