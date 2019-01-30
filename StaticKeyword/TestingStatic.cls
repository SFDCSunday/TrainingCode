public class TestingStatic {
    
    static{
        TestingStatic.val1=151;
        System.debug('This is static block');
    }
    
    public static Integer val1{get; set;} //static variable
    public Integer val2{get; set;} //non-static variable
    
    public TestingStatic(Integer x){
        print();
        val2=x;
        val1=x;
        print();
    }
    
    public void print(){
        System.debug('Val1 : '+val1+', Val2 : '+val2);
    }
    
    public static void printLine(){
        System.debug('Val1 : '+val1);
        TestingStatic t=new TestingStatic(15);
        System.debug('Val1 : '+t.val2);
        System.debug('This is from static method');
    }

}
