
public class Matriz { //publica a classe matriz
    public static void main(String[] args) {
        int[][] numeros = new int[2][3]; //define quantidade de linhas e colunas
        //preenche os valores da primeira linha 
        numeros[0][0] = 10;
        numeros[0][1] = 20;
        numeros[0][2] = 30;
        //preenche os valores da segunda linha
        numeros[1][0] = 40;
        numeros[1][1] = 50;
        numeros[1][2] = 60;
        //percorre as linhas da matriz
        for(int i = 0; i< 2; i++){
            //percorre as colunas da matriz
            for (int j = 0; j< 3; j++){
                //imprime o valor da posição
                System.out.print(numeros[i][j]+ " ");
            }
            System.out.println();//pula pra próxima linha
        }
        
    }
    
}
