public class MyFirstController {
    public boolean isNew{get; set;}
    public Account newAccount{get; set;}
    public MyFirstController(){
        isNew=false;
        
    }
    public void save(){
        
    }
    
    public void edit(){
        
    }
    
    public void newAction(){
        isNew=true;
        newAccount=new Account();
    }
    
    public void cancel(){
        
    }
}