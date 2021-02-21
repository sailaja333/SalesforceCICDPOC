public class caseutils{
    public static Boolean executeTriggerBln = true;
    public caseutils(){
    }
    @InvocableMethod
    public static void stopTriggerFromPB(List<Id> caseLst){
         executeTriggerBln = false;
    }     
}