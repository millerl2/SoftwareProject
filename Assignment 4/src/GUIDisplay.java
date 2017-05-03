import javax.swing.JOptionPane;


public class GUIDisplay implements DisplayMethod
{
	
	public void display(AbstractCardAccount acard) 
	{
	       JOptionPane.showMessageDialog(null, "Name: " + acard.getName() +  
	       "\nBalance: " + acard.getBalance() +
	       "\nAPR: " + acard.getAPR());
	}
}
