import 'package:flutter/material.dart';
import 'package:gestorsofttec/controllers/projeto_controller.dart';
import 'package:gestorsofttec/widgets/botao_padrao.dart';
import 'package:provider/provider.dart';

class DetalheProjetoView extends StatelessWidget {
  final VoidCallback onVoltar;

  const DetalheProjetoView({super.key, required this.onVoltar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xFF000D15),0xFF001621
      backgroundColor: Color(0xFF001621),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(32.0),
        child: Column(
            children: [
              IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.white, size: 28),
              onPressed: onVoltar,
              tooltip: 'Voltar para a lista',
              padding: EdgeInsets.zero,
              alignment: Alignment.centerLeft,
            ),
            ],
          ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SizedBox(
          height: 56,
          child: Align(
            alignment: Alignment.centerLeft,
            child: BotaoPadrao(
            label: 'Abrir projeto',
            onPressed: () {
              context.read<ProjetoController>().mudarTela(TelaProjeto.visualizarProjeto);
                print('Clicou para visualizar o projeto');
            },
          ),
          ),
        ),
      ),

    );
  }
}
