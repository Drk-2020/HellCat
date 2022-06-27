trigger AvoidCreationOfLead on Lead (before insert) {
    
List<String> emaiList = new List<String>();
    for(Lead l : trigger.new){
    emaiList.add(l.Email);
    }
       List<Lead> conList = [SELECT id,Name,Email from Lead where Email IN:emaiList];
        
        List<String> dupEmail = new List<String>();
        for(Lead lc : conList){
           dupEmail.add(lc.Email);
        }
        for(Lead l : trigger.new){
            if(dupEmail.contains(l.email)){
                l.addError('Duplicate Email Found Existing DB :' +l.Email);
            }
        }
    }