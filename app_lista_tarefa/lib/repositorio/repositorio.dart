import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app_lista_tarefa/modelo/objeto_data_hora.dart';

class Repositorio {
  Repositorio(){
    SharedPreferences.getInstance().then((value) => sharedPreferences=value);
  }
  late SharedPreferences sharedPreferences;

  /*explicar*/
  void salvarLista(List<Data_Hora>lista){
    final jsonString = json.encode(lista);
    print( jsonString);
  }
}