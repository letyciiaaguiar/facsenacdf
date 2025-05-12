package lista2;
import java.util.Scanner;

public class Ex3 {
   
    public static double[] lerVetor(int tamanho) {
        Scanner scanner = new Scanner(System.in);
        double[] vetor = new double[tamanho];

        System.out.println("Digite " + tamanho + " números reais:");
        for (int i = 0; i < tamanho; i++) {
            System.out.print("Valor " + (i + 1) + ": ");
            vetor[i] = scanner.nextDouble();
        }

        return vetor;
    }
    public static double[] calcularQuadrado(double[] vetorOriginal) {
        double[] vetorQuadrado = new double[vetorOriginal.length];
        for (int i = 0; i < vetorOriginal.length; i++) {
            vetorQuadrado[i] = Math.pow(vetorOriginal[i], 2);
        }
        return vetorQuadrado;
    }

    
    public static void imprimirVetores(double[] original, double[] quadrado) {
        System.out.println("\nVetor original: ");
        for (double valor : original) {
            System.out.print(valor + " ");
        }

        System.out.println("\nVetor com quadrados: ");
        for (double valor : quadrado) {
            System.out.print(valor + " ");
        }

        System.out.println();
    }
}


