public with sharing class acccustomcontroller {

//Binding variable
public Account acc { get;set; }

//constructor : all the logic which should be call first,when the page is loaded , should be written here    
public acccustomcontroller(){
 acc = new Account();
 acc.ownerId = UserInfo.getUserId(); 

}
public Pagereference Save(){
  upsert acc;
  Pagereference pNext = new Pagereference('/apex/accountcustomoutput?id='+acc.id);
  pNext.setRedirect(true);
  return pNext;
}
}