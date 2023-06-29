import 'package:flutter/material.dart';

final TextEditingController email_controle = TextEditingController();

class pagina_lista extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //padding é para obter margens na sua caixa de texto
        child: Padding(
          padding: const EdgeInsets.all(100),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: email_controle,
                  decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              ElevatedButton(onPressed: entrar, 
              child: Text("entrar")
              ),
            ],
          ),
        ),
      ),
    );
  }
}

  void entrar(){
    String texto = email_controle.text;
    print(texto);
    email_controle.clear();
  }

  