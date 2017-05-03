public abstract class AbstractCardAccount
{
    private String name;
    private double balance;
    private DisplayMethod displayMeth;
    private double APR;
    public AbstractCardAccount(String name, double balance, DisplayMethod dm, double apr)
    {
        this.name = name;
        this.balance = balance;
        this.displayMeth = dm;
        this.APR = apr;
    }
    public String getName()
    {
        return name;
    }
    public double getBalance()
    {
        return balance;
    }
    public void setBalance(double balance)
    {
        this.balance = balance;
    }
    public void setDisplayMethod(DisplayMethod dm)
    {
        this.displayMeth = dm;
    }
    public void performDisplay()
    {
        displayMeth.display(this);
    }
    public double getAPR()
    {
        return APR;
    }
}
