public with sharing class contablecontroller {

public List<consultant__c> conList { get; set; }
//get data of consultant- name,type,doj.dob.ssn

       public contablecontroller(){
       conList = [select name,type__C,date_of_joining__C,Date_of_birth__C,ssn__C from consultant__c];

}
//dispaly in tabular format
}