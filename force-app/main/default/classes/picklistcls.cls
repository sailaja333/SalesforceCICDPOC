public class picklistcls {
    
    public string selected{get; set;}
    
    public string displaytext{get; set;}
    
    public void show(){
        displaytext = selected;
    }
}