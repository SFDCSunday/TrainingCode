trigger LeadTrigger on Lead (Before Insert,Before Update,Before Delete,After Insert,After Update,After Delete,After UnDelete) {
	
    boolean isBeforeInsert=Trigger.IsBefore && Trigger.IsInsert;
    boolean isBeforeUpdate=Trigger.IsBefore && Trigger.IsUpdate;
    boolean isBeforeDelete=Trigger.IsBefore && Trigger.IsDelete;
    boolean isAfterInsert=Trigger.IsAfter && Trigger.IsInsert;
    boolean isAfterUpdate=Trigger.IsAfter && Trigger.IsUpdate;
    boolean isAfterDelete=Trigger.IsAfter && Trigger.IsDelete;
    boolean isAfterUnDelete=Trigger.IsAfter && Trigger.IsUnDelete;
    
    /*
     	Developer Note :
-		----------------
			Create 'l.Discount__c' field of percent type on Lead Record. before proceeding with the example.
    */
    
    if(isBeforeInsert || isBeforeUpdate){ 
        if(isBeforeUpdate){
            System.debug('Before Update Event Occurs');
            /*For(Lead l:Trigger.New){
                Lead oldRecord=Trigger.OldMap.get(l.Id);
                System.debug('@@New Version : '+l);
                System.debug('@@Old Version : '+oldRecord);
                l.Discount__c=((oldRecord.City=='Jaipur' && l.City<>'Jaipur') || l.City=='Jaipur'?20.0:10.0);
                System.debug('@@Value : '+l.Discount__c);
            }*/
        }else{
            System.debug('Before Insert Event Occurs');
        }
        
       /* For(Lead l:Trigger.New){
            l.Discount__c=(l.City=='Jaipur'?20.0:10.0);
            System.debug('@@Value : '+l.Discount__c);
        }*/
        
        
    }
    if(isBeforeDelete){ System.debug('Before Delete Event Occurs');}
    if(isAfterInsert){ 
        System.debug('After Insert Event Occurs');
    }
    if(isAfterUpdate){ 
        System.debug('After Update Event Occurs');
        /*List<Lead> recordsFromDB=[Select Id,City from Lead where Id in:Trigger.NewMap.KeySet() FOR UPDATE];
        For(Lead l:recordsFromDB){
            Lead oldRecord=Trigger.OldMap.get(l.Id);
            Lead newRecord=Trigger.NewMap.get(l.Id);
            System.debug('@@New Version : '+l);
            System.debug('@@Old Version : '+oldRecord);
            l.Discount__c=((oldRecord.City=='Jaipur' && newRecord.City<>'Jaipur') || newRecord.City=='Jaipur'?20.0:10.0);
            System.debug('@@Value : '+l.Discount__c);
        }
        update recordsFromDB;*/
    }
    if(isAfterDelete){ System.debug('After Delete Event Occurs');}
    if(isAfterUnDelete){ System.debug('After UnDelete Event Occurs');}
    
}