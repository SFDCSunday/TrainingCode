/*
    Class Name : FZ
    Author : SFDC Sunday Team (01-28-2019)
    Purpose : Define basic characterstics of a Yamaha's FZ Bike to understand concepts of Inheritance
*/
public class FZ extends Yamaha{

    private String color{get; set;}
    private static final String MODEL='FZ';

    public FZ(){
        super(MODEL,5,150);
        color='Black';
    }

    public FZ(Integer gears,Integer engineCapacity){
        super(MODEL,gears,engineCapacity);
        color='Black';
    }

    public override void rideBike(){
        super.rideBike();
        System.debug('Color of this rig is '+color);
    }

}