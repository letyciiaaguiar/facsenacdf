import java.util.ArrayList; //importa a biblioteca de array

public class Array {//publica a classe 

public static void main(String[] args){

        ArrayList<String> nomes = new ArrayList<>();

        nomes.add("Letycia");
        nomes.add("Silva");
        nomes.add("Aguiar");

        System.out.println("Primeiro nome: " +nomes.get(0)); //imprime o nome Letycia
        System.out.println("Tamanho da lista: " + nomes.size()); //mostra a quantidade de nomes que tem na lista.

        nomes.remove("Silva"); //remove o nome silva

        for (String nome : nomes){
            System.out.println(nome); //Letycia,Aguiar
        }
}
}