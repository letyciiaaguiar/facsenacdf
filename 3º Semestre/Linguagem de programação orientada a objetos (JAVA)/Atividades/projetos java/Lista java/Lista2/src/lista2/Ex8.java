package lista2;

public class Ex8 {
    public static int contarNegativos(double[] vetor) {
        int count = 0;
        for (double v : vetor) {
            if (v < 0) count++;
        }
        return count;
    }

    public static double somarPositivos(double[] vetor) {
        double soma = 0;
        for (double v : vetor) {
            if (v > 0) soma += v;
        }
        return soma;
    }
}
