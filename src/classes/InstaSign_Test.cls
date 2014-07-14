/**
        @author         :     Anil Shivaraj
        @date           :     01/01/2014
        @name           :     Hierarchy_OrgChart_Test
        @Organisation   :     Deloitte USI  
        @Description    :     Test method for the Hierarchy_OrgChart class. 
**/


@isTest
private class InstaSign_Test {

    static testMethod void myUnitTest() {
     Profile p = [SELECT Id FROM Profile WHERE Name='System Administrator']; 

     User u = new User(Alias = 'standt', Email='standarduser@testorg.com', 
                        EmailEncodingKey='UTF-8', LastName='Testing', LanguageLocaleKey='en_US', 
                        LocaleSidKey='en_US', ProfileId = p.Id, department = 'STP',
                        TimeZoneSidKey='America/Los_Angeles', UserName=Math.random() + '@test.com');

          System.runAs(u) { 
            
            account acct = new account(name='test1234');
            insert acct;
            
            PageReference pageRef = Page.InstaSign;
            Test.setCurrentPage(pageRef);
            ApexPages.currentPage().getParameters().put('Id', acct.id);
            
            InstaSign.completeSignature('PETYRHNUWUEHDJD',acct.id);
            
        }
    }
}