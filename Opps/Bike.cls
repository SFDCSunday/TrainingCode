/*
    Class Name : Bike
    Author : SFDC Sunday Team (01-28-2019)
    Purpose : Define basic characterstics of a Bike to understand concepts of Inheritance
*/
public virtual class Bike{

    private String model{get; set;}
    private String companyName{get; set;}
    private Integer gears{get; set;}
    private Integer engineCapacity{get; set;}

    public Bike(){
        this('Sample Model','Sample Company',2,100);
    }

    public Bike(String model,String companyName,Integer gears,Integer engineCapacity){
        this.model=model;
        this.companyName=companyName;
        this.gears=gears;
        this.engineCapacity=engineCapacity;
    }

    public virtual void rideBike(){
        System.debug('I\'m riding '+model+' of '+companyName);
        System.debug('This Rig is having '+gears+' gears and '+engineCapacity+'CC Engine');
    }

}