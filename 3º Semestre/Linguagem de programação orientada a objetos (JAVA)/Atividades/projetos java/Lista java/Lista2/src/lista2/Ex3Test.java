package lista2;

public class Ex3Test {
    public static void main(String[] args) {
        int tamanho = 5; // você pode mudar para outro número se quiser
        double[] vetorOriginal = Ex3.lerVetor(tamanho);
        double[] vetorQuadrado = Ex3.calcularQuadrado(vetorOriginal);
        Ex3.imprimirVetores(vetorOriginal, vetorQuadrado);
    }
}
