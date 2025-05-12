package lista2;

public class Ex1 {

    public int[] criarVetor() {
        return new int[]{1, 0, 5, -2, -5, 7};
    }

    public int somarPosicoes(int[] vetor) {
        return vetor[0] + vetor[1] + vetor[5];
    }

    public void modificarPosicao4(int[] vetor) {
        vetor[4] = 100;
    }

    public void imprimirVetor(int[] vetor) {
        for (int i = 0; i < vetor.length; i++) {
            System.out.println("A[" + i + "] = " + vetor[i]);
        }
    }
}
