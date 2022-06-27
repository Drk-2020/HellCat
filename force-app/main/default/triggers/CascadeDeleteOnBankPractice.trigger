trigger CascadeDeleteOnBankPractice on Bank__c (before delete) {
    List<ID> bIdList = New List<ID>();
     for(Bank__c b : trigger.old){
        bIdList.add(b.Id);
            }
    List<Credit_card__c> ccList = [SELECT id,name,Bank__c from Credit_card__c where Bank__C IN:bIdList];
            
        delete ccList;  

}