/*
    Class Name : Yamaha
    Author : SFDC Sunday Team (01-28-2019)
    Purpose : Define basic characterstics of a Yamaha Bike to understand concepts of Inheritance
*/
public virtual class Yamaha extends Bike{

    private static final String COMPANY_NAME='Yamaha';

    public Yamaha(){
        super('RX100',COMPANY_NAME,4,100);
    }

    public Yamaha(String model,Integer gears,Integer engineCapacity){
        super(model,COMPANY_NAME,gears,engineCapacity);
    }

}