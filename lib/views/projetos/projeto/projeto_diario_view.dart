import 'package:flutter/material.dart';

class ProjetoDiarioView extends StatelessWidget {
  const ProjetoDiarioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Diário', 
      style: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold
        ),
      )
    );
  }
}
