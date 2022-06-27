trigger CascadeOnDepartment on Department__c (before delete) {
List<ID> depIdList = new List<ID>();
    for(Department__c d : trigger.old){
        depIdList.add(d.Id);
    }
    List<Employee__c> empList = [SELECT id,name,Department__c from Employee__c where Department__c IN: depIdList];
    delete empList;
}