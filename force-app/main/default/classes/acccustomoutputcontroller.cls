public with sharing class acccustomoutputcontroller {

public Account acc{ get; set; }

public acccustomoutputcontroller(){
Id accID = ApexPages.currentPage().getParameters().get('id');
acc = [select name,ownerID,rating,phone from account where id =:accID];
}
}