package lista2;

import java.util.Scanner;
public class Ex2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int[] numeros = new int[6];

        // Lê os 6 valores
        System.out.println("Digite 6 números inteiros:");
        for (int i = 0; i < numeros.length; i++) {
            System.out.print("Número " + (i + 1) + ": ");
            numeros[i] = scanner.nextInt();
        }

        // Mostra os valores lidos
        System.out.println("\nValores digitados:");
        for (int num : numeros) {
            System.out.println(num);
        }

        scanner.close();
    }
}


