package lista2;
public class Ex6Test {
    public static void main(String[] args) {
        int[] valores = {1, 2, 3, 4, 5, 6};
        int[] invertido = Ex6.inverterOrdem(valores);
        System.out.print("Vetor invertido: ");
        Ex6.imprimirVetor(invertido);
    }
}
