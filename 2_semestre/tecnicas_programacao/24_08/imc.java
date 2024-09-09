import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.text.DecimalFormat;

public class imc {

    public static void main(String[] args) {
        
        String s = "";
        float p = 0, m = 0, a = 0, imc = 0;
        BufferedReader date;
        DecimalFormat format = new DecimalFormat("#.00");

        try {
            
            System.out.println("Calculo do IMC");
            System.out.println("Digite o seu peso em kg: ");
            date = new BufferedReader(new InputStreamReader(System.in));
            s = date.readLine();
            p = Float.parseFloat(s);

            System.out.println("Digite a sua altura: ");
            date = new BufferedReader(new InputStreamReader(System.in));
            s = date.readLine();
            a = Float.parseFloat(s);

            imc = p /(a * a);
            System.out.println("Seu imc é: " + format.format(imc));

            if(imc < 18.5) {

                System.out.println("IMC muito baixo!!!");

            } else if(imc >= 18.6 && imc <= 24.9) {

                System.out.println("IMC dentro do ideal!!!");

            } else if(imc >= 25 && imc <= 29.9) {

                System.out.println("IMC muito acima!!!");

            } else if(imc >= 35 && imc <= 34.9) {
                System.out.println("Obesidade Grau 1");
            }

        } catch (Exception err) {
            System.err.println(err);
        }
   }
    
}
