//Write a trigger on Account. If user is updating the name of an account then throw an error message "Account Name Cannot be Changed."
trigger theowErrorOnUpdateAccount on Account (before update) {
    List<String> nameAc = new List<String>();
 for(Account a : trigger.new){
     nameAc.add(a.name);
    }
    List<String> dupName = new List<String>();
    for(Account acc :[select id,Name from Account where name IN :nameAc]){
     dupName.add(acc.Name);   
         }
    for(Account a : trigger.new){
      if(dupName.contains(a.name)){
        a.addError('Account Name Cannot be Changed.');
       }
    }
}