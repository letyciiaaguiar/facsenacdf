package lista2;

public class Ex8Test {
    public static void main(String[] args) {
        double[] numeros = {1.5, -2.0, 3.0, -4.5, 5.0, 6.0, -1.2, 0.0, 8.0, -3.3};
        int negativos = Ex8.contarNegativos(numeros);
        double somaPositivos = Ex8.somarPositivos(numeros);
        System.out.println("Quantidade de números negativos: " + negativos);
        System.out.println("Soma dos positivos: " + somaPositivos);
    }
}
