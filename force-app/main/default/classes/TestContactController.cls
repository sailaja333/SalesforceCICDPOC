@isTest
public with sharing class TestContactController {

    @isTest
    public static void testmthd1() {
        ContactController.getContactList();
        ContactController.findContacts('test');    
    }

}