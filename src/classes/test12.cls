Public class test12{
    public string textField{
               Get{
                   If(textField == null) return 'default';
               Return textField  ;                   
                      }
    Set;
}

Public PageReference doSomething(){
    Return null;
}
}