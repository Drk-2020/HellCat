public with sharing class october28class {
   @AuraEnabled(cacheable=true)
   public static List<Contact> getContact(){
      List<Contact> conList = new List<Contact> ();
      conList = [SELECT id,Name,Email FROM Contact Limit 10];
      return conList;
   }
}