/*
    Class Name : Libaro
    Author : SFDC Sunday Team (01-28-2019)
    Purpose : Define basic characterstics of a Yamaha's Libaro Bike to understand concepts of Inheritance
*/
public class Libaro extends Yamaha{

    private String color{get; set;}
    private static final String MODEL='Libaro';

    public Libaro(){
        super(MODEL,5,150);
        color='Black';
    }

    public Libaro(Integer gears,Integer engineCapacity){
        super(MODEL,gears,engineCapacity);
        color='Black';
    }

    public override void rideBike(){
        super.rideBike();
        System.debug('Color of this rig is '+color);
    }

}