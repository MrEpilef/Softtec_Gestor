import 'package:flutter/material.dart';


class CadastroView extends StatelessWidget {
  const CadastroView({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.bottomRight,
          colors:[
            Color.fromARGB(255, 241, 64, 4),
            Color.fromARGB(255, 201, 53, 15),
          ]
        ),
      ),
    child: Text(
      "Esta é a aba cadastro",
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
      ),
    );
  }
}