import 'package:flutter/material.dart';

class DetalheProjetoView extends StatelessWidget {
  final VoidCallback onVoltar;

  const DetalheProjetoView({Key? key, required this.onVoltar})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF001621),
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white, size: 28),
              onPressed: onVoltar,
            ),
          ),
          Center(
            child: Text(
              "Tela detalhe do projeto",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
