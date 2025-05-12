public class ExercicioMatriz {
    public static void main(String[] args) {
        int [][] numeros = new int [3][3]; // define linhas e colunas

        numeros[0][0] = 1;
        numeros[0][1] = 2;
        numeros[0][2] = 3;
        numeros[1][0] = 4;
        numeros[1][1] = 5;
        numeros[1][2] = 6;
        numeros[2][0] = 7;
        numeros[2][1] = 8;
        numeros[2][2] = 9;
         
        for(int i = 0; i< 3; i++){
            //percorre as colunas da matriz
            for (int j = 0; j< 3; j++){
                //imprime o valor da posição
                System.out.print(numeros[i][j]+ " ");
            }
            System.out.println();//pula pra próxima linha

    }
}
}