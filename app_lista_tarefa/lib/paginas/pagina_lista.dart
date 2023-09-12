import 'package:app_lista_tarefa/modelo/objeto_data_hora.dart';
import 'package:app_lista_tarefa/repositorio/repositorio.dart';
import 'package:app_lista_tarefa/widgets/itens_lista.dart';
import 'package:flutter/material.dart';

// final TextEditingController email_controle = TextEditingController();

class Pagina_Lista extends StatefulWidget {
  @override
  State<Pagina_Lista> createState() => _Pagina_ListaState();
}

class _Pagina_ListaState extends State<Pagina_Lista> {
  final TextEditingController mensagensControlador = TextEditingController();
  
  final Repositorio objeto_repostorio = Repositorio();

  List<Data_Hora> Mensagens = [];
  Data_Hora? deletar_itens;
  int? posicao_atual_deletar;

  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold è um Widget que fornece uma estrutura visual basica para um aplicativo
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                          hintText: "digite aqui"),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      String qualquercoisa = mensagensControlador.text;
                      setState(() {
                        Data_Hora item_data_hora = Data_Hora(
                            titulo: qualquercoisa,
                            data_hora: DateTime
                                .now()); //adicionando valores na lista Mensagens
                        Mensagens.add(item_data_hora);
                      });
                      objeto_repostorio.salvarLista(Mensagens);
                      mensagensControlador.clear();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 150, 11, 169),
                        padding: EdgeInsets.all(20)),
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    for (Data_Hora mensagem_controle in Mensagens)
                      tudoItemlista(
                        mensagem_data_hora: mensagem_controle,
                        item_deletar_tarefas: deletar_tarefas,
                      ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                        "Você possui ${Mensagens.length} tarefas pendentes"),
                  ),
                  SizedBox(
                    width: 8, /* Espaçamento entre o texto e o botão */
                  ),
                  ElevatedButton(
                    onPressed:mensagem_confirmacao,
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(210, 140, 61, 150),
                        padding: EdgeInsets.all(20)),
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
                  children: [],
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void deletar_tarefas(Data_Hora item_data_hora) {
    deletar_itens = item_data_hora;
    posicao_atual_deletar = Mensagens.indexOf(item_data_hora);

    setState(() {
      Mensagens.remove(item_data_hora);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          "Tarefa ${item_data_hora.titulo} foi removida com sucesso",
          style: TextStyle(
              color: const Color.fromARGB(255, 0, 5, 7),
              fontSize: 14,
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: Color.fromARGB(212, 143, 59, 171),
        action: SnackBarAction(
          label: "Desfazer",
          onPressed: () {
            setState(() {
              Mensagens.insert(posicao_atual_deletar!, deletar_itens!);
            });
          },
        ),
      ),
    );
  }

  void mensagem_confirmacao() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Limpar tudo?"),
            content:
                Text("Você tem ceretza que deseja apagar todas as tarefas?"),
            actions: [
              TextButton(
                onPressed: () {},
                child: Text("cancelar"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Limpar tudo"),
              ),
            ],
          );
        });
  }
  void apagar_tudo(){
    setState(() {
      Mensagens.clear();
    });
  }
}

