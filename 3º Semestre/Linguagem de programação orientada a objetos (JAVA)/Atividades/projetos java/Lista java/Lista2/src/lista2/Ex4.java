package lista2;

import java.util.Scanner;

public class Ex4 {

    public static int[] lerVetor(int tamanho) {
        Scanner scanner = new Scanner(System.in);
        int[] vetor = new int[tamanho];
        for (int i = 0; i < tamanho; i++) {
            System.out.print("Digite um número inteiro para a posição " + i + ": ");
            vetor[i] = scanner.nextInt();
        }
        return vetor;
    }

    public static int contarPares(int[] vetor) {
        int contador = 0;
        for (int valor : vetor) {
            if (valor % 2 == 0) {
                contador++;
            }
        }
        return contador;
    }
}
