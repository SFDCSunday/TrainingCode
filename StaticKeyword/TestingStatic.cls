public class TestingStatic {

    //Point to Remember : Scope of static is strictly to transection.
    
    //This is static block which execute first time the class invoke.
    //It doesn't matter if we invoke this class with static member or non static member.
    static{
        TestingStatic.val1=151;
        System.debug('This is static block');
    }
    
    public static Integer val1{get; set;} //static variable
    public Integer val2{get; set;} //non-static variable
    
    //constructor which executes when we create an instance of the class
    public TestingStatic(Integer x){
        print();
        val2=x;
        val1=x;
        print();
    }
    
    //non static method which can be invoked from the object
    public void print(){
        System.debug('Val1 : '+val1+', Val2 : '+val2);
    }
    
    //static method which can be called with class name without creating an instance
    public static void printLine(){
        System.debug('Val1 : '+val1);
        TestingStatic t=new TestingStatic(15);
        System.debug('Val1 : '+t.val2);
        System.debug('This is from static method');
    }

}
