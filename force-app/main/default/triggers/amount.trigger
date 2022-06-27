//Write a trigger on Opportunity. If opportunity amount >= 100000 then update the field Priority__c as "High" else if amount < 100000 
//and amount > 50000 then update the field Priority__c as"Medium" else if amount < 50000 then update the field Priority__c as "Low".
trigger amount on Opportunity (before insert,after update) {
    for(Opportunity opp : trigger.new){
        If(opp.Amount >= 100000){
           opp.Priority__c = 'High';
        }
            else if (opp.Amount < 100000){
                opp.Priority__c = 'Medium'; 
             
        }
         else if (opp.Amount > 5000){
                opp.Priority__c = 'Low'; 
             
        }
    }
}