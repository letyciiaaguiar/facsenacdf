package lista2;

public class Ex6 {
    public static int[] inverterOrdem(int[] vetor) {
        int[] invertido = new int[vetor.length];
        for (int i = 0; i < vetor.length; i++) {
            invertido[i] = vetor[vetor.length - 1 - i];
        }
        return invertido;
    }

    public static void imprimirVetor(int[] vetor) {
        for (int v : vetor) {
            System.out.print(v + " ");
        }
        System.out.println();
    }
}
