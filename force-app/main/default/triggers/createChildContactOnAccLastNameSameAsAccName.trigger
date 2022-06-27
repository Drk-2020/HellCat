trigger createChildContactOnAccLastNameSameAsAccName on Account (after insert) {
    List<Contact> conList = new  List<Contact>();
    for(Account a : trigger.new){
        if(a.rating =='cold' && a.Industry =='Education'){
           Contact c = new Contact();
            c.lastname = +a.Name;
            c.AccountId = a.Id;
            conList.add(c);
            
        }
    }
    insert conList;
}