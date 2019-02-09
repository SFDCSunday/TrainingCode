# Triggers
Code Samples related to Triggers

Trigger can be of two type
1. Before Trigger
2. After trigger

Base Trigger template
trigger [Trigger-name] on [object-name] ([Events]) {

}

For Teigger name and object name we must use the naming convention used for class name e.g.
1. Name should start with a character
2. There should no blank space in between words
3. No Special Symbl used other then _
4. for object name API name must be used.

There are 7 events
1. Before Insert
2. Before Update
3. Before Delete
4. After Insert
5. After Update
6. After Delete
7. After UnDelete

multiple events can be used on the place holder with comma seperated value.

Context Variable are nothing but the way to get information related the event, record in trigger framework

Following are context variable
1. IsInsert - return boolean values based on the event (true/false)
2. IsUpdate
3. IsDelete
4. IsUndelete
5. IsBefore
6. IsAfter


eg.
<code>
trigger LeadTrigger on Lead (Before Insert,Before Update,Before Delete,After Insert,After Update,After Delete,After UnDelete) {
	boolean isBeforeInsert=Trigger.IsBefore && Trigger.IsInsert;
    boolean isBeforeUpdate=Trigger.IsBefore && Trigger.IsUpdate;
    boolean isBeforeDelete=Trigger.IsBefore && Trigger.IsDelete;
    boolean isAfterInsert=Trigger.IsAfter && Trigger.IsInsert;
    boolean isAfterUpdate=Trigger.IsAfter && Trigger.IsUpdate;
    boolean isAfterDelete=Trigger.IsAfter && Trigger.IsDelete;
    boolean isAfterUnDelete=Trigger.IsAfter && Trigger.IsUnDelete;
    
    if(isBeforeInsert){ System.debug('Before Insert Event Occurs');}
    if(isBeforeUpdate){ System.debug('Before Update Event Occurs');}
    if(isBeforeDelete){ System.debug('Before Delete Event Occurs');}
    if(isAfterInsert){ System.debug('After Insert Event Occurs');}
    if(isAfterUpdate){ System.debug('After Update Event Occurs');}
    if(isAfterDelete){ System.debug('After Delete Event Occurs');}
    if(isAfterUnDelete){ System.debug('After UnDelete Event Occurs');}
    
}
</code>