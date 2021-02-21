public class accountlist{
    public list<account> accLst{get; set;}
    
    public accountlist(){
        accLst = [select id,name,phone from account limit 10];
    }

}