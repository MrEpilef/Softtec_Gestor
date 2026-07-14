import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF001621), 
      alignment: Alignment.center,
      child: const Text(
        'Tela do Dashboard',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }
}