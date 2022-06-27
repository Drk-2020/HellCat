public class UpdateAccountOnInsertClass {
    
    public static void updateAccountActive (List<Account> accList){
          for(Account a : accList){
        if(a.Rating == 'Cold'){
            a.Active__c ='Yes';
        }
    }
        
    }

}