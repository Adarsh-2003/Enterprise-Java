package pack;
import javax.ejb.Stateless;
@Stateless
public class ConverterBean implements ConverterBeanLocal 
{
    @Override
    public double Rupees_To_Dollar(double amt)
    {
        return (amt/73.65);
    }
    
    @Override
    public double Dollar_To_Rupees(double dolar) 
    {
        return (dolar*73.65);
    }
}
