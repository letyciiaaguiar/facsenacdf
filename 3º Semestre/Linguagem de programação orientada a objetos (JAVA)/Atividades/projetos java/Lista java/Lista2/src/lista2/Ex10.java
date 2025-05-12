package lista2;

import java.util.HashSet;

public class Ex10 {
    public static void verificarDuplicatas(int[] vetor) {
        HashSet<Integer> vistos = new HashSet<>();
        HashSet<Integer> duplicatas = new HashSet<>();

        for (int num : vetor) {
            if (!vistos.add(num)) {
                duplicatas.add(num);
            }
        }

        if (duplicatas.isEmpty()) {
            System.out.println("Nenhum valor duplicado.");
        } else {
            System.out.println("Valores duplicados: " + duplicatas);
        }
    }
}
