public class Oct24Controller {

    @auraenabled	
    public static List<Opportunity>	getoppty(){
        List<Opportunity> oppList = [SELECT id,StageName,Amount from opportunity limit 20];
        return oppList;
    }
}