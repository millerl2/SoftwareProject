public class Assignment4
{
	public static void main(String args[])
	{
		DisplayMethod dm = new GUIDisplay();

		CreditCard card1 = new CreditCard("John Smith", 200000.00, dm , 12.31);
		DebitCard card2 = new DebitCard("King Savage", 1000000.00, dm, 13.4);
		DebitCard card3 = new DebitCard("Peter Pan", 5.0, dm, 10.0);
		
		card3.setIssuer("Visa");
		card2.setIssuer("MasterCard");
		
		card1.performDisplay();
		card2.performDisplay();
		card3.performDisplay();
		
	}
}
