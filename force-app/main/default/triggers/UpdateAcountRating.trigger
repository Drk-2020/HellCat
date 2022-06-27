/*Update the Active Field on Account to "Yes" if an Account Record is Created with rating="Cold"*/

trigger UpdateAcountRating on Account (before insert) {
    //Comment...
    UpdateAccountOnInsertClass.updateAccountActive(Trigger.new);
        
   
}