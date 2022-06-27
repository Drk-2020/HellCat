trigger createChildRecordContactNameSameAsAccountName on Account (After insert) {
    List<contact> cList = new List<contact>();
    for(Account a : Trigger.new){
        if(a.rating == 'hot' && a.industry == 'education'){
            contact c = new contact();
            c.Lastname = +a.name;
            c.AccountId = a.Id;
            cList.add(c);
        }
    }
    insert cList;
}