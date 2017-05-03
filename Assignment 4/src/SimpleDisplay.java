
public class SimpleDisplay implements DisplayMethod
{
/**
 * @param acard  the financial card that should be displayed
 */
   public void display(AbstractCardAccount acard)
   {
       System.out.println("Name: " + acard.getName());
       System.out.println("Balance: " + acard.getBalance());
       System.out.println("APR: " + acard.getAPR());
   }
}

