import 'package:flutter/material.dart';
import 'package:app_lista_tarefa/paginas/pagina_lista.dart';


//* todo app tem que fazer esses comandos(linha 7 ate a 11)*// 
void main() {
  runApp( Meuapp());
}

class Meuapp extends StatelessWidget{
  Widget build(BuildContext context){
    return  MaterialApp(
      /* o parametro home é o que especifica a tela inicial do nosso aplicativo */
      home: pagina_lista() ,
    );
  }
}

