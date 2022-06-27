public class updateAccoutOnInsertPractice {
    public static void updateAccountActive (List<Account> accList){
         for(Account a : accList){
        if(a.rating == 'cold'){
           a.Active__c = 'Yes'; 
        }
    }
    }
}