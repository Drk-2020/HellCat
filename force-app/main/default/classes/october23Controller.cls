public class october23Controller {
    @auraEnabled
    public static List<Opportunity> getOppty(){
      List<Opportunity>  oppList = [SELECT id,StageName,Amount from Opportunity limit 20];
      return oppList;
    }
}