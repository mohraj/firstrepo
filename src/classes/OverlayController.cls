/*******************************************************************************************
** Class Name: OverlayController
** Description: Class to visual force page 'OverlayPage'. This contains the dummy method which is being clled from page.
** Version: 1.0


** 
**-----------------------------------------------------------------------------------------
**Modification Log:
**----------------
**Developer                  Date          Version               Description
**-----------------------------------------------------------------------------------------
**Mohit R                 12-JUN-2012         1.0                   Created
**
** 
********************************************************************************************/

public class OverlayController {
    public integer counter;
    
    // dummy method called from page
    public PageReference doSomething() {
        
        Integer start = System.Now().millisecond();
        
            while(System.Now().millisecond()< start+100){ 
        }
        return null;
    }

}