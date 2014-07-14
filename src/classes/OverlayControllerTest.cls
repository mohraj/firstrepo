/**************************************************************************
** Class Name: OverlayControllerTest
** Description: Test Class for OverlayController
** Built By: Deloitte
**-------------------------------------------------------------------------
**Modification Log:
**-----------------
** Developer                  Date                    Description
** ------------------------------------------------------------------------
** Mohit               12-JUN-2012                      Created
--------------------------------------------------------------------------

**************************************************************************/




@isTest
private class OverlayControllerTest
{

    static testMethod void OverlayControllerPositiveTest() 
    {
     
        Test.startTest();
            OverlayController ocInst = new OverlayController();
            ocInst.doSomething();
        Test.stopTest();

    }
}