package lista2;

public class Ex1Test {
    public static void main(String[] args) {
        Ex1 obj = new Ex1();

        int[] vetor = obj.criarVetor();
        int soma = obj.somarPosicoes(vetor);
        System.out.println("Soma das posições A[0], A[1] e A[5]: " + soma);

        obj.modificarPosicao4(vetor);
        obj.imprimirVetor(vetor);
    }
}
