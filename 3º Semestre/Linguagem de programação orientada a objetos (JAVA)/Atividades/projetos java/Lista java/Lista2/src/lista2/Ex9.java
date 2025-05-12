package lista2;

public class Ex9 {
    public static int encontrarMaior(int[] vetor) {
        int maior = 0;
        for (int i = 1; i < vetor.length; i++) {
            if (vetor[i] > vetor[maior]) maior = i;
        }
        return maior;
    }

    public static int encontrarMenor(int[] vetor) {
        int menor = 0;
        for (int i = 1; i < vetor.length; i++) {
            if (vetor[i] < vetor[menor]) menor = i;
        }
        return menor;
    }
}
