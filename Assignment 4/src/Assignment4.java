public class Assignment4
{
	public static void main(String args[])
	{
		DisplayMethod dm = new GUIDisplay();

		CreditCard card1 = new CreditCard("John Wayne", 4200.0, dm , 12.31);
		DebitCard card2 = new DebitCard("Fred Savage", 824.0, dm, 13.4);
		DebitCard card3 = new DebitCard("Ronald McDonald", 500.0, dm, 10.0);
		
		card3.setIssuer("Visa");
		card2.setIssuer("MasterCard");
		
		card1.performDisplay();
		card2.performDisplay();
		card3.performDisplay();
		
	}
}