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