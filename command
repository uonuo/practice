
package example4_2_2;

public interface Command {
   public abstract void execute();
}
ConcreteCommand.java
package example4_2_2;

public class ConcreteCommand implements Command {
    CompanyArmy army;
    ConcreteCommand(CompanyArmy army)
    {
    	this.army=army;
    }
    public void execute()
    {
    	army.sneakAttack();
    } 
}


package example4_2_2;

public class ArmySuperior {
   Command command;
   public void setCommand(Command command)
   {
	   this.command=command;
   }
   public void startExecuteCommand()
   {
	   command.execute();
   }
}
