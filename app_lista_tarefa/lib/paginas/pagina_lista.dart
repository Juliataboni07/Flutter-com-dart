import 'package:flutter/material.dart';

final TextEditingController email_controle = TextEditingController();

class Pagina_Lista extends StatefulWidget {

  @override
  State<Pagina_Lista> createState() => _Pagina_ListaState();
}

class _Pagina_ListaState extends State<Pagina_Lista> {
  final TextEditingController mensagensControlador = TextEditingController();

  List<String> Mensagens = [];

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: mensagensControlador,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Adicione uma tarefa",
                        hintText: "Digite aqui"),
                  ),
                ),
                SizedBox(width: 7),
                ElevatedButton(
                  onPressed: () {
                    String qualquercoisa = mensagensControlador.text;
                    Mensagens.add(qualquercoisa);// Adicionando valores na lista Mensag
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(158, 101, 6, 136),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
                 ListView(
              shrinkWrap: true,
              children:  [
                for(String mensagem in Mensagens)
               ListTile(
                title: Text("Juju taboni é linda."),
                subtitle: Text("Você concorda?"),
                leading: Icon(Icons.question_mark, size:40,),
                onTap: () {
                  print("Pergunta 1");
                },
               ),
               ListTile(
                title: Text("Ai que fome."),
                subtitle: Text("Você concorda?"),
                leading: Icon(Icons.question_answer_outlined, size:40,),
                onTap: () {
                  print("Pergunta 2");
                },
               ),
               ListTile(
                title: Text("Vontade de comer um doce."),
                subtitle: Text("Você concorda?"),
                leading: Icon(Icons.question_answer_sharp, size:40,),
                onTap: () {
                  print("Pergunta 3");
                },
               ),
               ListTile(
                title: Text("Quero ir emboraaaaa!!!!"),
                subtitle: Text("Você concorda?"),
                leading: Icon(Icons.ac_unit, size:40,),
                onTap: () {
                  print("Pergunta 4");
                },
               ),
               ListTile(
                title: Text("O livro: O lado feio do amor, é muito bomm!"),
                subtitle: Text("Você concorda?"),
                leading: Icon(Icons.abc_rounded, size:40,),
                onTap: () {
                  print("Pergunta 5");
                },
               ),
               ListTile(
                title: Text("Ficar maromba hoje."),
                subtitle: Text("Você concorda?"),
                leading: Icon(Icons.question_answer_outlined, size:40,),
                onTap: () {
                  print("Pergunta 6");
                },
               ),
              ], 
            ),
            Row(
              children: [
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    labelText: "Você possui 0 tarefas pendentes",
                  ),
                )),
                SizedBox(width: 7),
                ElevatedButton(
                  onPressed: () {
                    String qualquercoisa= mensagensControlador.text;
                    setState((){
                      Mensagens.add(qualquercoisa);
                  });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(184, 133, 11, 208),
                  ),
                  child: Text("Limpar"), 
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 120,
              child: ListView(
                children: [
                 
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
           
            SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}