import 'dart:io';

main(){
  //repetir();
  //repetir2();
  String oi =meio("programas");
  print(oi);
  List valores = ["asdf","maria","do bairro","eu sou","ai ai ai","1sdsa5as"];
  maior(valores, 2);
}

//01 faça um programa que recebe, um numero interio e repete ele o mesmo numero de vezes
 repetir(){
  int valor = int.parse(stdin.readLineSync()!);
  
  for(int i = 1; i <= valor; i++){
      print("${i.toString()}" * i);
  }
}
//02 faça um programa que recebe, um numero interio e e ir contato de 1 a n por linha

repetir2(){
  int valor = int.parse(stdin.readLineSync()!);
  String aux = "";
  for(int i = 1; i <= valor;i++){
        for(int k = 1; k <= i; k++){
          aux = aux + k.toString();
        }
      print(aux);
      aux = "";
  }
}


//03 retornar a letra do meio, se a palavra tiver um numero par de letras, deve retornar as duas do meio
String meio(String palavra){
  int  tamanho = palavra.length;
  String aux = "";
  if(tamanho % 2 == 0){
      for(double i = (tamanho/2)-1 ; i <= tamanho/2; i++){
          aux += palavra[i.toInt()];
      }
      print(aux);
  }else{
      int indice =  (tamanho/2).round();
      aux = palavra[indice-1];
      
  };
  return aux;
}

//04 pegar a maior string deccorente da soma  das pelavras de um array
String maior(strarr,k){
  int tamanho = strarr.length;
  print(tamanho);
  String aux = "";
  String res = "";
  for(int i = 0; i < tamanho;i++){
    
    for(int j = tamanho-1; j > 0; j--){
        aux = strarr[i] + strarr[j];
        if(aux.length > res.length){
            res = aux;
           
        }
    }
  }

  return res;
}