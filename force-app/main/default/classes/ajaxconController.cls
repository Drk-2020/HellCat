public with sharing class ajaxconController {
    
    
    public ajaxconController(){
    showDescription = false;    
       con = new Consultant__c();
  }


   public PageReference showdescriptionMethod() {
       if(con.type__c == 'Employee'){
       showDescription = true;
   }else {
    showDescription = false;
    }
    return null;
   }


// IQ :: We use Action function to implement AJAX in visualforce 
//Action function : is use to call apex code using a javascript event

    Public Consultant__c con{ get; set; }
    Public Boolean showDescription{ get; set; }
}