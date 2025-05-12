package lista2;

import java.util.Random;

public class Ex5 {

    public static int[] lerVetor(int tamanho) {
        int[] vetor = new int[tamanho];
        Random random = new Random();
        for (int i = 0; i < tamanho; i++) {
            vetor[i] = random.nextInt(100); // de 0 a 99
        }
        return vetor;
    }

    public static int encontrarMaior(int[] vetor) {
        int maior = vetor[0];
        for (int valor : vetor) {
            if (valor > maior) {
                maior = valor;
            }
        }
        return maior;
    }

    public static int encontrarPosicao(int[] vetor, int valor) {
        for (int i = 0; i < vetor.length; i++) {
            if (vetor[i] == valor) {
                return i;
            }
        }
        return -1; // caso não encontre
    }

    public static void imprimirVetor(int[] vetor) {
        System.out.print("Vetor: ");
        for (int valor : vetor) {
            System.out.print(valor + " ");
        }
        System.out.println();
    }
}
