import 'package:app_lista_tarefa/modelo/objeto_data_hora.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';

class tudoItemlista extends StatelessWidget {
  const tudoItemlista({
    super.key, 
    required this.mensagem_data_hora,
    required this.item_deletar_tarefas});

  final Data_Hora mensagem_data_hora;
  final Function(Data_Hora) item_deletar_tarefas;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane:  ActionPane(motion: ScrollMotion(), children: [
        SlidableAction(
          //An action can be bigger than the others.
          flex: 2,
          onPressed: (context){
            item_deletar_tarefas(mensagem_data_hora);
          },
          backgroundColor: Color.fromRGBO(156, 60, 252, 1),
          foregroundColor: Color.fromARGB(213, 18, 188, 21),
          icon: Icons.delete,
          label: 'deletar',
        )
      ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Color.fromARGB(78, 188, 68, 221),
          ),
          height: 70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  mensagem_data_hora.data_hora.toString(),
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  DateFormat("dd/MM/yyyy - HH:mm")
                      .format(mensagem_data_hora.data_hora),
                  //mensagem_data_hora.data_hora.toString(),
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}