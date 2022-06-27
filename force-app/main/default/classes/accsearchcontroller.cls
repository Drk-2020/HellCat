public with sharing class accsearchcontroller {

   Public String searchstring{ get; set; }
   Public List<Account> accList { get; set; }
   Public List<Consultant__C> conList { get; set; }
   Public List<Bank__C> bList { get; set; }
   
    public accsearchcontroller(ApexPages.StandardController controller) {

    }
    
    // We need to use the concept of dynamic queries two methods of dynamic query
    //List<sObject> cList = Database.query(String)--> used to fire dynamic SOQL query fire -Select (query retrieve result from one object at a time )
    //List<List<sObject>> ccList = Search.query(Srting)-->dynamic SOSL - Find (fire single query on multiple objects) sObject = salesforce object
    
    Public PageReference search(){
          String queryString = 'Select id,name,rating from account where NAME LIKE \'%' + searchstring + '%\' Limit 10';
          accList = database.query(queryString);
          
    return null;
        }
        
    Public pagereference clear(){
    accList.clear();
    return null;
    }    

}