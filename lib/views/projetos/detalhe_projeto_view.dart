import 'package:flutter/material.dart';

class DetalheProjetoView extends StatelessWidget {
  final VoidCallback onVoltar;

  const DetalheProjetoView({super.key, required this.onVoltar});

   @override
    Widget build(BuildContext context) {
      return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Container(
        clipBehavior: Clip.antiAlias, 
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFF14004), 
              Color(0xFFC9350F), 
            ],
          ),
          
          
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4), 
              blurRadius: 10, 
              offset: const Offset(0, 4), 
            ),
          ],
        ),
          child: Stack(
            children: [
              Positioned(
                top: 20,
                left: 20,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.white, size: 28),
                  onPressed: onVoltar,
                  tooltip: 'Voltar para a lista',
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
        )
        
      );
    }
}
