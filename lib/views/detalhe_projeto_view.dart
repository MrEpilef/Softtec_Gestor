import 'package:flutter/material.dart';

class DetalheProjetoView extends StatelessWidget {
  final VoidCallback onVoltar;

  const DetalheProjetoView({Key? key, required this.onVoltar})
    : super(key: key);

  @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(32.0),


        child: Material(
          elevation: 8, // Sombra para o efeito de destaque
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xFF001621), // Cor de fundo do cartão
          clipBehavior: Clip.antiAlias, // Garante que as bordas fiquem perfeitamente redondas

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
