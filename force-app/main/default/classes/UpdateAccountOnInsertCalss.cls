public class UpdateAccountOnInsertCalss {
  //this Class we define as fuction
      public static void updateAccountActive(List<Account> accList){
          for(Account a : accList){
        if(a.rating == 'Cold'){
            a.Active__c = 'Yes';
            
        }
    }
      }
}