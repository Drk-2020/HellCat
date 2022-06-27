public with sharing class ajaxController {

    public String con { get; set; }

    public ajaxController(){
       showDescription = false;
       acc = new Account();
  }


   public PageReference showdescriptionMethod() {
       if(acc.rating == 'cold'){
       showDescription = true;
   }else {
    showDescription = false;
    }
    return null;
   }


// IQ :: We use Action function to implement AJAX in visualforce 
//Action function : is use to call apex code using a javascript event

   Public Account acc{ get; set; }
   Public Boolean showDescription{ get; set; }
}