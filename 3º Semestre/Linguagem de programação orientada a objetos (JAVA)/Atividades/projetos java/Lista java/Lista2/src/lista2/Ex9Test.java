package lista2;

public class Ex9Test {
    public static void main(String[] args) {
        int[] valores = {7, 2, 9, 4, 1};
        int posMaior = Ex9.encontrarMaior(valores);
        int posMenor = Ex9.encontrarMenor(valores);
        System.out.println("Posição do maior valor: " + posMaior);
        System.out.println("Posição do menor valor: " + posMenor);
    }
}
