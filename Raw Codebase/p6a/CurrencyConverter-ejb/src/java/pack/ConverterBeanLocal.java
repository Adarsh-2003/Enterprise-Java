package pack;
import javax.ejb.Local;

@Local
public interface ConverterBeanLocal 
{

    double Rupees_To_Dollar(double amt);

    double Dollar_To_Rupees(double dolar);
    
}
