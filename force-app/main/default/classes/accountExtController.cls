public with sharing class accountExtController {
    public Account acc;
    public accountExtController(ApexPages.StandardController controller) {
    this.acc = (Account)controller.getRecord();
    acc.ownerId = userInfo.getUserId();
    }
    
    public PageReference Save(){
    //1.save the record in data base
       upsert acc;
    //2.navigate to the custom output page
      PageReference pNext = new PageReference('/apex/accountoutput?id=' + acc.id);
      pNext.setRedirect(true);
       return pNext;
    }
    public Pagereference SaveAndNew(){
    Pagereference pNext = new Pagereference('/apex/accountinput');
    pNext.setRedirect(true);
       return pNext;
       }
}