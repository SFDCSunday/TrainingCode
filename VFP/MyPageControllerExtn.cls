public class MyPageControllerExtn {
    public Id recordId{get; set;}
    public First_Object__c frObj{get; set;}
    public MyPageControllerExtn(ApexPages.StandardController controller){
      recordId=controller.getId(); 
      List<First_Object__c> lstFR=[SELECT Id, Name, Phone__c, email__c FROM First_Object__c where Id=:recordId];
        if(lstFR.size()>0){
            frObj=lstFR[0];
        }
    }
    
    public PageReference save(){
        return Page.MyPage;
        //return new PageReference('/'+frObj.Id);
    }
}