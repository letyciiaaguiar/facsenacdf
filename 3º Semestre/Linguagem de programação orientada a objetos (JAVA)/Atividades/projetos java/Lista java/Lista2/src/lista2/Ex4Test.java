package lista2;

public class Ex4Test {
    public static void main(String[] args) {
        int[] vetor = Ex4.lerVetor(10);
        int quantidadePares = Ex4.contarPares(vetor);
        System.out.println("Quantidade de números pares: " + quantidadePares);
    }
}
