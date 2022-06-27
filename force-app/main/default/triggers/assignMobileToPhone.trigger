//Write a trigger on Contact. If the Phone field is empty and Mobile field is not empty then assign Mobile field value to the Phone field.
trigger assignMobileToPhone on Contact (before insert) {    
    for(Contact c : trigger.new){
        if(c.Phone == null){
            c.Phone = +c.MobilePhone;
            
       
        }
    }
}