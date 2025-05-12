package lista2;

public class Ex5Test {
    public static void main(String[] args) {
        // Lê um vetor de 10 posições com números aleatórios
        int[] vetor = Ex5.lerVetor(10);

        // Encontra o maior valor no vetor
        int maior = Ex5.encontrarMaior(vetor);

        // Encontra a posição do maior valor
        int posicao = Ex5.encontrarPosicao(vetor, maior);

        // Imprime o vetor
        Ex5.imprimirVetor(vetor);

        // Exibe o maior valor e sua posição
        System.out.println("Maior valor: " + maior);
        System.out.println("Posição do maior valor: " + posicao);
    }
}
