public class DebitCard extends AbstractCardAccount 
{
	String issuer;
	
	   public DebitCard(String name, double balance, DisplayMethod dm, double apr)
	   {
	       super(name,balance,dm,apr);
	   }
	
	   public String getIssuer()
	   {
		   return issuer;
	   }
	   
	   public void setIssuer(String issuer)
	   {
		   this.issuer = issuer;
	   }
}