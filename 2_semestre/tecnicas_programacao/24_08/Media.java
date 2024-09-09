import java.io.DataInputStream;
import java.util.Scanner;

public class Media{

    public static void main(String[] args) {
        
        String s = "";

        double p1 = 0, p2 = 0, m = 0, faltas = 0, trabalho = 0;

        Scanner dataTwo;

        try {
            
            System.out.println("Digite a nota de P1");
            dataTwo = new Scanner(System.in);
            s = dataTwo.nextLine();
            p1 = Double.parseDouble(s);


            
            System.out.println("Digite a nota de P2");
            dataTwo = new Scanner(System.in);
            s = dataTwo.nextLine();
            p2 = Double.parseDouble(s);
            
            System.out.println("Digite a nota de trabalho");
            dataTwo = new Scanner(System.in);
            s = dataTwo.nextLine();
            trabalho = Double.parseDouble(s);
            m = (3.5 * p1 + 3.5 * p2 + 3 * trabalho) / 10;

            System.out.println("Sua Média é: " + m);
            
        } catch (NumberFormatException err) {
            System.err.println(err);
        }

    }
}
