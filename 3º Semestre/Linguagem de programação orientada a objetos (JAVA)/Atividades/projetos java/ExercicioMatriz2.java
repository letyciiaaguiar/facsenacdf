import java.util.Random;
import java.util.Random.*;
public class ExercicioMatriz2 {
  int [][]  numeros = new int [4][4];
    Random random = new Random();

    int pares = 0;
    int impares = 0;

    for (int i = 0; i < 4; i++){
        for (int j = 0; j< 4; j++){
            numeros[i][j] = random.nextInt(50) + 1;

            // Verifica se é par ou ímpar e incrementa o contador
            if (numeros[i][j] % 2 == 0) {
                pares++;
            } else {
                impares++;
            }
            System.out.println("Matriz gerada:");
            for (int i = 0; i < 4; i++) {
                for (int j = 0; j < 4; j++) {
                    System.out.print(numeros[i][j] + "\t"); // \t = tabulação
                }
                System.out.println(); // pula linha
            }
            System.out.println("\nQuantidade de números pares: " + pares);
            System.out.println("Quantidade de números ímpares: " + impares);
        }
    }
}