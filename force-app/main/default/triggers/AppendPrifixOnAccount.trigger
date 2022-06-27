trigger AppendPrifixOnAccount on Account (before insert) {
    
    for(Account a : Trigger.new){
        If(a.Name != null){
            a.Name = 'M/S.' +a.Name;
            
        }
    }
}