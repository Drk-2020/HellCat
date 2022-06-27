trigger AvoidCreationOfDuplicateOnAcc on Account (before insert) {
List<String> AccountList = new List<String>();
    For(Account a : trigger.new){
        AccountList.add(a.Name);
    }
    
   List<Account> AccList = [SELECT id,name from Account where Name IN: AccountList];
    
    List<String> dupname = new List<String>();
    for(Account acc : AccList){
        dupname.add(acc.name);
    }
    for(Account a : trigger.new){
        if(dupname.contains(a.Name)){
            a.addError('Duplicate Account Record With Same Name'+a.Name+ 'Exists in DB');  
        }
    }
}