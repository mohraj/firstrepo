/**
        @author         :     Anil Shivaraj
        @date           :     01/02/2014
        @name           :     InstaSign
        @Organisation   :     Deloitte USI  
        @Description    :     Resusable component for capturing signatures.  
**/ 


Global class InstaSign{

/**
     *  Method name:    completeSignature
     *  @description    Java script remoting method to invoke the capture signature method
     *  @param          none
     *  @return         String
**/    

@RemoteAction
    Global static string completeSignature(String signature, String parentid) {
        Attachment a = new Attachment (ParentId = parentid,Body = EncodingUtil.base64Decode(signature),
                                       ContentType = 'image/svg+xml;base64',
                                       Name = 'Signature'+System.now());
        Database.insert(a);
        
        FeedItem fItem = new FeedItem();
        fItem.ParentId = parentid; 
        fItem.Body = 'Signature captured sucessfully: '+ system.now(); 
        if (signature!= null && signature!= ''){
            fItem.Type = 'ContentPost'; 
            fItem.ContentFileName = 'Signature'+System.now()+'.png';
            fItem.ContentData = EncodingUtil.base64Decode(signature);
            
        } else{
            fItem.Type = 'TextPost'; 
        }
        
        insert fItem; 
        
        return fItem.id;
    }


}