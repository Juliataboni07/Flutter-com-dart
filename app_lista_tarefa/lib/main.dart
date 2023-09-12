import 'package:app_lista_tarefa/paginas/pagina_lista.dart';
import 'package:flutter/material.dart';




void main() {
  runApp( Meuapp());
}

class Meuapp extends StatelessWidget{
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      /* o parametro home é o que especifica a tela inicial do nosso aplicativo */
      home: Pagina_Lista() ,
    );
  }
}

