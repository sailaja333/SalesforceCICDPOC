public with sharing class CreateAccountController {

    public PageReference cancel() {
        pagereference ref = new pagereference('/001/o');
        return ref;
    }


    public PageReference savenewrecord() {
        Account acc = new account();
        acc.name= names;
        acc.phone= phones;
        insert acc;
        
        pagereference ref = new pagereference('/apex/AccountCreationCustom');
        ref.setredirect(true);
        return ref;
    }

    
    public string names{get; set;}
    public string phones{get; set;}
    
    public PageReference saveRecord() {
        
        Account acc = new account();
        acc.name = names;
        acc.phone= phones;
        insert acc;
        
        pagereference ref = new pagereference('/'+acc.id);
        return ref;
    }


}