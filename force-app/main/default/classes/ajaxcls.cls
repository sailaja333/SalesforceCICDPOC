public class ajaxcls {

    public string name{get; set;}
    
    
    public ajaxcls(){
       name='Default value';
    }
    
    public void change(){
    
        name = 'Changed Value';
    }
    public void unchange(){
    
       name='Default value';
    }
}