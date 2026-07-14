import 'package:flutter/material.dart';

class ConfiguracaoView extends StatelessWidget {
  const ConfiguracaoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF001621),
      alignment: Alignment.center,
      child: const Text(
        'Tela de Configurações',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }
}