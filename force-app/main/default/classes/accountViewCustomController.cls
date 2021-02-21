public class accountViewCustomController {
    public Account acc{get;set;}

    public accountViewCustomController() {
        acc = [SELECT Id, Name, Site FROM Account 
                   WHERE Id = '0014W000022Rsq2'];
    }
}