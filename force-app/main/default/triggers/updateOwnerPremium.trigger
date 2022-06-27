trigger updateOwnerPremium on Consultant__c (before insert) {
    Id userId =[SELECT Id, Name FROM User where name ='Premium User'].id;
    for(Consultant__c con : Trigger.new){
        if(con.type__c =='Employee'){
            if(con.salary__c > 10000){
            con.ownerId = userId;
            }
        }
    }
}